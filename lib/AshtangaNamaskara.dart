import 'package:flutter/material.dart';

class Ashtanganamaskara extends StatelessWidget {
  const Ashtanganamaskara({super.key});

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
        backgroundColor:Colors.blue,
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
                  side: BorderSide(color: const Color.fromARGB(255, 164, 164, 165), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Knees, Chest, and Chin (Ashtanga Namaskara)',
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
              Image.asset('assets/gif/gif18.gif'),
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
                      text: 'Ashtanga Namaskara was once taught to all beginning yoga students as an alternative to and preparation for Chaturanga Dandasana.'
			' In recent years, it\'s fallen out of favor.\n\n'

			'As a result, some students are rushed into Chaturanga before they are ready.'
			' It belongs in the sun salutation series for beginners.'
			' Plus, it\'s an excellent warmup yoga pose for deeper backbends\n\n.'

			'Take your time and enter the yoga pose slowly from a plank.'
			' Lower your knees to the yoga mat with your toes tucked.'
			' Keep your elbows in toward your body as you lower your chest and chin to the floor.'
			' Shoulders should hover over your hands.\n\n'

			
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
