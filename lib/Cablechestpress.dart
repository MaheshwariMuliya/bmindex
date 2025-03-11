import 'package:flutter/material.dart';

class Cablechestpress extends StatelessWidget {
  const Cablechestpress ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cable Chest Press',
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 245, 245, 252), Colors.blue],
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
                      'assets/images/img65.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Chest'),
                    buildExerciseDetail('Secondary Muscle(s):', ' Shoulder, Triceps'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'cable'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Push'),
                    const SizedBox(height: 20),
                    const Text(
                      ' Exercise Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Setup for the cable chest press by attaching single hand pulleys to the high cables and set the weight you want to use on each stack.'),
                    buildInstructionStep('2. Grasp the handles with palms facing down and step out to take up the slack on the cables. Your arms should be slightly bent. This is the starting position for the exercise.'),
                    buildInstructionStep('3. Keeping your body fixed, eyes forward and chest out, slowly push the weight out in front of you. The angle should be slightly downwards, so your hands should end up at around mid chest height.'),
                    buildInstructionStep(' 4. Pause at the top of the movement and squeeze the pecs.'),
                    buildInstructionStep('5. Slowly lower back to the starting position.'),
                    buildInstructionStep(' 6. Lower the bar in a straight line to the base of the sternum (breastbone) and touch the chest.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Cable Chest Press Tips:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. Use a full range of motion on each rep, allowing a full stretch and contraction.'),
                    buildTip('2. Keep the rep speed low and focus on contracting the muscle at the top of the movement.'),
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
