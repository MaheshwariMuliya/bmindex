import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SuggestionScreen extends StatefulWidget {
  const SuggestionScreen({super.key});

  @override
  State<SuggestionScreen> createState() => _SuggestionScreenState();
}

class _SuggestionScreenState extends State<SuggestionScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _suggestionController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void submitSuggestion() async {
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _phoneController.text.isEmpty ||
        _suggestionController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill in all fields."),
          backgroundColor: Colors.redAccent,
        ),
      );
      return;
    }

    await _firestore.collection('suggestions').add({
      'name': _nameController.text,
      'email': _emailController.text,
      'phone': _phoneController.text,
      'suggestion': _suggestionController.text,
      'reply': "", 
      'timestamp': FieldValue.serverTimestamp(),
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Thank you for your suggestion!"),
        backgroundColor: Colors.green,
      ),
    );

    _nameController.clear();
    _emailController.clear();
    _phoneController.clear();
    _suggestionController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' FLEX FITNESS',
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "We value your suggestions! Let us know how we can improve.",
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
              controller: _suggestionController,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: "Enter your suggestion...",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: submitSuggestion,
              icon: const Icon(Icons.send),
              label: const Text("Submit"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 10),
            const Text("Your Suggestions & Replies", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            StreamBuilder<QuerySnapshot>(
              stream: _firestore
                  .collection('suggestions')
                  .orderBy('timestamp', descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Center(child: Text("No suggestions found."));
                }

                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data!.docs.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    var doc = snapshot.data!.docs[index];
                    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

                    return Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['suggestion'] ?? "No Suggestion",
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                            ),
                            const SizedBox(height: 10),
                            if (data['reply'] != null && data['reply'].isNotEmpty)
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "Admin Reply: ${data['reply']}",
                                  style: const TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold),
                                ),
                              )
                            else
                              const Text(
                                "No reply yet",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

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
