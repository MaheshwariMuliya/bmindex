import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'homescreen.dart';
import 'trainerotpscreen.dart';
import 'admin_dashboard.dart'; 

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  void loginUser() async {
    String email = emailController.text.trim().toLowerCase();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      showError("Please enter both email and password.");
      return;
    }

    setState(() => isLoading = true);

    // Admin Login Condition
    if (email == "admin" && password == "admin") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AdminDashboard()),
      );
      setState(() => isLoading = false);
      return;
    }

    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore.instance
          .collection('trainers')
          .where('email', isEqualTo: email)
          .limit(1)
          .get();

      if (querySnapshot.docs.isEmpty) {
        showError("No user found with this email.");
        setState(() => isLoading = false);
        return;
      }
      var userData = querySnapshot.docs.first.data();

      if (userData['password'] != password) {
        showError("Incorrect password. Please try again.");
        setState(() => isLoading = false);
        return;
      }

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(userData: userData),
        ),
      );
    } catch (e) {
      showError("An unexpected error occurred. Please try again.");
    }

    setState(() => isLoading = false);
  }

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 204, 197, 203), Color.fromARGB(255, 32, 105, 201)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Login to continue',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(height: 30),
                      _buildInputField(emailController, 'Email', Icons.email),
                      _buildInputField(passwordController, 'Password', Icons.lock, obscureText: true),
                      const SizedBox(height: 20),
                      isLoading
                          ? const CircularProgressIndicator()
                          : ElevatedButton(
                              onPressed: loginUser,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 32, 105, 201),
                                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 8,
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TrainerRegistrationScreen(),
                            ),
                          );
                        },
                        child: Text.rich(
                          TextSpan(
                            text: "Don't have an account? ",
                            style: const TextStyle(fontSize: 16, color: Colors.black),
                            children: [
                              TextSpan(
                                text: "Sign up",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 32, 105, 201),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(TextEditingController controller, String labelText, IconData icon, {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(icon, color: const Color.fromARGB(255, 32, 105, 201)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
