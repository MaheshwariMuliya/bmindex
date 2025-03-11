import 'package:flutter/material.dart';

class Upavisthakonasana extends StatelessWidget {
  const Upavisthakonasana({super.key});

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
                  side: BorderSide(color: const Color.fromARGB(255, 144, 144, 145), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Seated Wide Angle Straddle (Upavistha Konasana)',
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
              Image.asset('assets/images/img14.jpg'),
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
                      text: 'Opening your legs wide creates a slightly different stretch from Paschimottanasana.'
				'To do this yoga pose:\n\n'

			'1. Separate your legs into a wide position.\n\n'
			' 2. Flex both feet and engage both legs on the floor, coming into Upavistha Konasana.\n\n'
			' 3. Forward bend to the center, extending your spine on inhale and deepening the yoga pose on exhale.\n\n'

			' Though it may look like the mandate is to bring your chest to the floor, it\'s not about that.'
			' Instead, keep your back flat, rotate your pelvis forward instead of crunching through your spine, and keep your feet flexed.'
			' If you do all three of these things, it doesn\'t matter how far forward you lean.\n\n'

			
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
