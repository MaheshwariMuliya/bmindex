import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'trainer.dart';

class TrainerRegistrationScreen extends StatefulWidget {
  const TrainerRegistrationScreen({super.key});

  @override
  _TrainerRegistrationScreenState createState() =>
      _TrainerRegistrationScreenState();
}

class _TrainerRegistrationScreenState extends State<TrainerRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _locationController = TextEditingController();
  final _addressController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _expertiseController = TextEditingController();
  final _paymentDetailsController = TextEditingController();
  final _jobDescriptionController = TextEditingController();
  String? _selectedTrainerType;

  final List<String> _trainerTypes = [
    'Gym Trainer',
    'Yoga Trainer',
    'Diet Trainer',
    'Nutrition Trainer',
  ];

 void _registerTrainer() async {
  if (_formKey.currentState!.validate()) {
    if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }
    try {
      // Create user with email and password
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      await FirebaseFirestore.instance.collection('trainers').add({
        'name': _nameController.text,
        'phone': _phoneController.text,
        'email': _emailController.text,
        'location': _locationController.text,
        'address': _addressController.text,
        'trainerType': _selectedTrainerType,
        'expertise': _expertiseController.text,
        'paymentDetails': _paymentDetailsController.text,
        'jobDescription': _jobDescriptionController.text,
      });

      // Show success message without navigation
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registration Successful')),
      );

    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 204, 197, 203),
              Color.fromARGB(255, 32, 105, 201),
            ],
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Trainer Registration',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildInputField(_nameController, 'Name', Icons.person),
                        _buildInputField(_phoneController, 'Phone Number', Icons.phone),
                        _buildInputField(_emailController, 'Email', Icons.email),
                        _buildInputField(_locationController, 'Location', Icons.location_on),
                        _buildInputField(_addressController, 'Address', Icons.home),
                        _buildInputField(_expertiseController, 'Expertise', Icons.star),
                        _buildInputField(_paymentDetailsController, 'Payment Details', Icons.account_balance_wallet),
                        _buildInputField(_jobDescriptionController, 'Job Description', Icons.work),
                        _buildInputField(_passwordController, 'Password', Icons.lock, obscureText: true),
                        _buildInputField(_confirmPasswordController, 'Confirm Password', Icons.lock, obscureText: true),
                        _buildDropdownField(),

                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: _registerTrainer,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 32, 105, 201),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 8,
                          ),
                          child: const Text(
                            'Register & Continue',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: const Text(
                            'Already Registered? Login',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 32, 105, 201),
                              decoration: TextDecoration.underline,
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
      ),
    );
  }

  Widget _buildInputField(TextEditingController controller, String labelText, IconData icon, {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
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
        validator: (value) => value!.isEmpty ? 'Please enter $labelText' : null,
      ),
    );
  }

  Widget _buildDropdownField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        value: _selectedTrainerType,
        decoration: InputDecoration(
          labelText: 'Select Trainer Type',
          prefixIcon: const Icon(Icons.work, color: Color.fromARGB(255, 32, 105, 201)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
        items: _trainerTypes.map((String type) {
          return DropdownMenuItem<String>(
            value: type,
            child: Text(type),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            _selectedTrainerType = value;
          });
        },
        validator: (value) => value == null ? 'Please select a trainer type' : null,
      ),
    );
  }
}