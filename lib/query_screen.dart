import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QueryScreen extends StatefulWidget {
  const QueryScreen({super.key});

  @override
  State<QueryScreen> createState() => _QueryScreenState();
}

class _QueryScreenState extends State<QueryScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _queryController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void submitQuery() async {
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _phoneController.text.isEmpty ||
        _queryController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill in all fields."),
          backgroundColor: Colors.redAccent,
        ),
      );
      return;
    }

    // ✅ Store query in Firestore
    await _firestore.collection('queries').add({
      'name': _nameController.text,
      'email': _emailController.text,
      'phone': _phoneController.text,
      'query': _queryController.text,
      'timestamp': FieldValue.serverTimestamp(),
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Your query has been submitted!"),
        backgroundColor: Colors.green,
      ),
    );

    // Clear Fields
    _nameController.clear();
    _emailController.clear();
    _phoneController.clear();
    _queryController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FLEX FITNESS',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.blue,
        shadowColor: const Color.fromARGB(255, 206, 203, 203).withOpacity(0.5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                "Have any questions? Ask us!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              buildTextField("Full Name", _nameController),
              const SizedBox(height: 10),
              buildTextField("Email", _emailController, keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 10),
              buildTextField("Phone Number", _phoneController, keyboardType: TextInputType.phone),
              const SizedBox(height: 10),
              TextField(
                controller: _queryController,
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: "Enter your query...",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: submitQuery,
                icon: const Icon(Icons.send),
                label: const Text("Submit"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 📌 Reusable TextField Widget
  Widget buildTextField(String label, TextEditingController controller, {TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
