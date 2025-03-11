import 'package:flutter/material.dart';

class Trikonasana extends StatelessWidget {
  const Trikonasana({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: const Color.fromARGB(255, 149, 149, 150), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Triangle Pose (Utthita Trikonasana)',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const  Color(0xFF1A1A2E),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/gif/gif7.gif'),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Pose type:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Standing\n\n',
                    ),
                    TextSpan(
                      text: 'The Triangle can be modified like the Extended Side Angle, using a yoga block for your bottom hand if you are not comfortable reaching your arm to the floor in this yoga pose.'
			' You can also rest your hand higher up on your leg—on your shin or thigh—but avoid putting it directly on your knee.\n\n'

		  'Don\'t hesitate to micro-bend both knees if this yoga pose feels uncomfortable.'
		  'It won\'t look or feel like a pronounced bend, but rather, just enough movement to unlock your knees and ease tension in your hamstrings.\n\n'
      'Triangle offers many benefits: Strength (in the legs), flexibility (in the groin, hamstrings, and hips, as well as opening the chest and shoulders),and balance.\n\n'
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
