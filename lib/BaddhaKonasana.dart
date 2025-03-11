import 'package:flutter/material.dart';

class Baddhakonasana extends StatelessWidget {
  const Baddhakonasana({super.key});

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
                  side: BorderSide(color: const Color.fromARGB(255, 185, 186, 187), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Cobbler\'s Pose (Baddha Konasana)',
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
              Image.asset('assets/images/img9.jpg'),
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
                      text: 'Seated\n\n',
                    ),

                      TextSpan(
                      text: 'Let gravity work on stretching your inner thighs in Cobbler\'s pose.'
			' Props can help if you find this yoga pose challenging. Sitting on a block, cushion, or blanket raises your hips so your knees can open more naturally.\n\n'

			'If your knees are high, it takes a lot of effort to hold them up, and your legs need to be relaxed to enjoy the benefits of the stretch.'
			' The solution is to place a block (or something else supportive) under each knee to give them something to rest on.\n\n'

			'Since it\'s ​unusual to sit this way in everyday life, this yoga pose stretches neglected areas of the body, particularly the adductor groups of the groin.\n\n'

			
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
