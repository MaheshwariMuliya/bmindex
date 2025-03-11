import 'package:flutter/material.dart';

class Parvakonasana extends StatelessWidget {
  const Parvakonasana({super.key});

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
                  side: BorderSide(color: const Color.fromARGB(255, 128, 129, 129), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Extended Side Angle (Utthita Parvakonasana)',
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
              Image.asset('assets/gif/gif6.gif'),
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
                      text: 'One modification of the Extended Side Angle yoga pose is to bring your forearm to your thigh instead of placing your hand on the floor.'
			' It should rest lightly on your thigh and not bear much weight.'
			' This modification enables you to keep your shoulders open. '
			'You can also place your hand on a yoga block.\n\n'

			'If you reach toward the floor before you\'re ready, you may compromise the position of the torso, turning your chest toward the floor instead of toward the ceiling.\n\n',
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
