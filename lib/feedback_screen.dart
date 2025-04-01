import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _feedbackController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Function to Submit Feedback
  void submitFeedback() async {
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _contactController.text.isEmpty ||
        _feedbackController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill all fields."),
          backgroundColor: Colors.redAccent,
        ),
      );
      return;
    }

    // Send feedback to Firebase
    await _firestore.collection('feedbacks').add({
      'name': _nameController.text,
      'email': _emailController.text,
      'contact': _contactController.text,
      'feedback': _feedbackController.text,
      'timestamp': FieldValue.serverTimestamp(),
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Thank you for your feedback!"),
        backgroundColor: Colors.green,
      ),
    );

    // Clear Fields After Submission
    _nameController.clear();
    _emailController.clear();
    _contactController.clear();
    _feedbackController.clear();
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
                "We appreciate your feedback!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),

              // Name Field
              buildTextField("Enter your name", _nameController, Icons.person),
              const SizedBox(height: 10),

              // Email Field
              buildTextField("Enter your email", _emailController, Icons.email),
              const SizedBox(height: 10),

              // Contact Number Field
              buildTextField("Enter your contact number", _contactController, Icons.phone, isNumber: true),
              const SizedBox(height: 10),

              // Feedback Field
              TextField(
                controller: _feedbackController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Enter your feedback...",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 20),

              // Submit Button
              ElevatedButton.icon(
                onPressed: submitFeedback,
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

  Widget buildTextField(String hint, TextEditingController controller, IconData icon, {bool isNumber = false}) {
    return TextField(
      controller: controller,
      keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.blueAccent),
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
