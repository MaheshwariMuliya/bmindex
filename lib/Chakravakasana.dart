import 'package:flutter/material.dart';

class Chakravakasana extends StatelessWidget {
  const Chakravakasana({super.key});

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
                  side: BorderSide(color: const Color.fromARGB(255, 199, 200, 201), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Cat-Cow Stretch (Chakravakasana)',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/gif/gif16.gif'),
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
                      text: 'Backbend\n\n',
                    ),

                      TextSpan(
                      text: 'It\'s the best of both worlds: spinal extension followed by spinal flexion.'
			' Moving back and forth warms your back, improves body awareness, and is a basic introduction to doing a vinyasa sequence by coordinating your movements with your breath.\n\n'

			'Cat-Cow may be the most important yoga pose you learn, especially if you have back pain.'
			' Even if you never do more than a few yoga classes, continue doing this stretch on your own.\n\n'

			
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
