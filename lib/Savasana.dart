import 'package:flutter/material.dart';

class Savasana extends StatelessWidget {
  const Savasana({super.key});

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
                  side: BorderSide(color: const Color.fromARGB(255, 153, 154, 155), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Corpse Pose (Savasana)',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:const  Color(0xFF1A1A2E),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/images/img16.jpg'),
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
                      text: 'Resting\n\n',
                    ),

                      TextSpan(
                      text: 'Most yoga sessions end lying flat on your back in Corpse pose.'
			' It\'s a critical transition between the end of your yoga practice and the rest of your day.'
			' Bringing the body to stillness challenges the mind to maintain its calm. You may find this challenging at first, but it gets easier with practice.\n\n'

			'Give yourself plenty of time to learn these poses.\n'
			' Dedicate some time daily (or every few days) to relax in a comfortable space and review your practice.'
			' It\'s a good idea to wear workout tank tops with low support and four-way stretch to move with you through poses.'
			' With regular yoga sessions, you\'ll find that your body moves comfortably from one pose to the next for improved physical function and wellness.\n\n'

			
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
