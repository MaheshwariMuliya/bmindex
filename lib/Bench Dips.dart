import 'package:flutter/material.dart';

class BenchDips extends StatelessWidget {
  const BenchDips ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BenchDips',
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 246, 246, 248), Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      'assets/images/img127.jpg', 
                      height: 200,
                      width: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Exercise Profile',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildExerciseDetail('Main Muscle Group:', 'Triceps'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Bodyweight'),
                    buildExerciseDetail('Mechanics:', 'Isolation'),
                    buildExerciseDetail('Secondary Muscle(s):', 'shoulders'),
                    buildExerciseDetail('Force type:', 'Push'),
                    const SizedBox(height: 20),
                    const Text(
                      ' Exercise Instruction',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep(' 1. Set up for the bench dip by placing 2 flat benches parallel to one another to around 4-5 feet apart.'),
                    buildInstructionStep('2. Put your heels on the edge of one bench at around shoulder width apart.'),
                    buildInstructionStep(' 3. Place your hands on the edge of the other bench. This is the starting position for the exercise.'),
                    buildInstructionStep(' 4. Keeping your body close to the bench, slowly dip down until your elbows are at the same height as your shoulders.'),
                    buildInstructionStep('5. Slowly push back up, squeezing through the triceps .'),
                    buildInstructionStep(' 6. Do not lock the elbow out at the top of the exercise, and repeat.'),
                   const SizedBox(height: 20),
                    const Text(
                      'Exercise Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Keep your forearms pointing downward and try to keep your elbows close.'),
                    buildInstructionStep('2. It’s important that you do not dip down too low as it places unnecessary strain on the shoulder joints'),
                    buildInstructionStep('3. Keep the rep timing slow.'),
                    buildInstructionStep('4. Really squeeze the triceps at the top of the movement get the most out of this exercise. Mentally focusing on the triceps being the prime mover in this exercise will help place more emphasis on the triceps and less on the shoulders. '),
                    ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExerciseDetail(String title, String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: detail,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInstructionStep(String step) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        step,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildTip(String tip) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        tip,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
