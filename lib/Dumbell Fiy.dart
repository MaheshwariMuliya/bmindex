import 'package:flutter/material.dart';

class DumbellFiy extends StatelessWidget {
  const DumbellFiy ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dumbell Fiy',
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
                  colors: [Color.fromARGB(255, 244, 244, 248),Colors.blue],
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
                      'assets/images/img155.jpg', 
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
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Dumbbell'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('Secondary Muscle(s):', 'Shoulder'),
                    buildExerciseDetail('Force type:', 'Pull'),
                    const SizedBox(height: 20),
                    const Text(
                      'Exercise Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Grasp a set of dumbbells and sit on the end of a flat bench with the dumbbells resting on your thighs.'),
                    buildInstructionStep('2. Lay back on the bench and extend your arms out, holding the dumbbells above your body with a neutral grip. The dumbbells should not be touching. Keep your feet planted on the floor for balance. Bend your arms slightly. This is the starting position for the exercise.'),
                    buildInstructionStep('3. Slowly lower the dumbbells out to your sides in semi-circle. Rotate at the shoulder only, keep your arms slightly bent.'),
                    buildInstructionStep('4. Once the dumbbells get about level with your chest, squeeze the chest muscles and raise the dumbbells back up using the same path of motion as you did on the way down.'),
                    buildInstructionStep('5. Without letting the dumbbells touch, slowly lower them again.'),
                    buildInstructionStep('6. Repeat for desired reps.'),
                   const SizedBox(height: 20),
                    const Text(
                      'Dumbbell Fly Tips:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. This exercise should be done slowly, focusing on the stretch and contraction of the pectoral muscles.'),
                    buildInstructionStep('2. Don’t pause or let the dumbbells touch at the top of the exercise.'),
                    buildInstructionStep('3. Use a full range of motion by lowering the dumbbells as far as comfortably possible.'),
                    buildInstructionStep(' 4. Always use a wide semi circle motion when doing this exercise, and don’t allow the dumbbells to come too close to the body.'),
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
