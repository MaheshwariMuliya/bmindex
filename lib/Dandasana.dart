import 'package:flutter/material.dart';

class Dandasana extends StatelessWidget {
  const Dandasana({super.key});

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
                  side: BorderSide(color: const Color.fromARGB(255, 178, 179, 180), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Staff Pose (Dandasana)',
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
              Image.asset('assets/images/img8.jpg'),
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
                      text: 'Staff yoga pose is akin to a seated version of Mountain pose (above) in that it offers alignment guidelines for other seated yoga poses.'
			' Engage your leg muscles and flex your feet.\n\n'

			'Lift your chest and relax your shoulders.'
			' You can also allow a gentle bend in your knees so your shoulders can stack over your hips.\n\n'

			'Modify by using a block or folded blanket or two if you have trouble sitting straight with your butt flat on the floor.'
			' In a typical class, this yoga pose leads to a forward bend.\n\n'

			
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
