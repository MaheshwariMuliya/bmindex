import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'trainerdetails.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  bool isSendingOTP = false;  
  bool isVerifyingOTP = false; 
  bool isOTPSent = false;

  Future<void> sendOTP() async {
    final String email = _emailController.text.trim().toLowerCase();

    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a valid email")),
      );
      return;
    }

    setState(() => isSendingOTP = true);

    try {
      final response = await http.post(
        Uri.parse("https://emailverification-llm9.onrender.com/api/sendOTP"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"email": email}),
      );

      final result = jsonDecode(response.body);
      print("Response from sendOTP: $result");

      bool isSuccess = result["Status"] == 200;
      String message = result["Message"] ?? "Error sending OTP";

      setState(() {
        isSendingOTP = false;
        isOTPSent = isSuccess;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    } catch (e) {
      setState(() => isSendingOTP = false);
      print("Error in sendOTP: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Failed to send OTP. Please try again.")),
      );
    }
  }

  Future<void> verifyOTP() async {
    final String email = _emailController.text.trim().toLowerCase();
    final String otp = _otpController.text.trim();

    if (email.isEmpty || otp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a valid email and OTP")),
      );
      return;
    }

    setState(() => isVerifyingOTP = true);

    try {
      final response = await http.post(
        Uri.parse("https://emailverification-llm9.onrender.com/api/verifyOTP"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"email": email, "enteredOtp": otp}),
      );

      final result = jsonDecode(response.body);
      print("Response from verifyOTP: $result");

      if (response.statusCode == 200 && result["Status"] == 200) {
        String message = result["Message"] ?? "OTP verified successfully";
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));

        Map<String, dynamic>? userDetails = result["Result"];

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TrainerListScreen(userDetails: userDetails),
          ),
        );
      } else {
        String errorMessage = result["Message"] ?? "Invalid OTP. Please try again.";
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMessage)));
      }
    } catch (e) {
      print("Error in verifyOTP: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Failed to verify OTP. Please try again.")),
      );
    } finally {
      setState(() => isVerifyingOTP = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Page',
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
              Image.asset(
                'assets/images/img163.png',
                width: 300,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
               TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter User Name",
                  labelText: "User Name",
                  floatingLabelBehavior: FloatingLabelBehavior.never, 
                  prefixIcon: const Icon(Icons.person, color: Colors.blue),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              TextField(
  controller: _emailController,
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    hintText: "Enter Email",
    labelText: "Email",
    floatingLabelBehavior: FloatingLabelBehavior.never, 
    prefixIcon: const Icon(Icons.email, color: Colors.blue),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
    suffixIcon: Padding(
      padding: const EdgeInsets.only(right: 8),
      child: TextButton(
        onPressed: isSendingOTP || isOTPSent ? null : sendOTP,
        child: isSendingOTP
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(color: Colors.blue, strokeWidth: 2),
              )
            : const Text(
                "Send OTP",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    ),
  ),
),


              const SizedBox(height: 20),

              TextField(
                controller: _otpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter OTP",
                  labelText: "OTP",
                  floatingLabelBehavior: FloatingLabelBehavior.never, 
                  prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isVerifyingOTP ? null : verifyOTP,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 5,
                  ),
                  child: isVerifyingOTP
                      ? const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                        )
                      : const Text("Verify OTP"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


