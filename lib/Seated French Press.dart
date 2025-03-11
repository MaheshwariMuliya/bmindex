import 'package:flutter/material.dart';

class SeatedFrenchPress extends StatelessWidget {
  const SeatedFrenchPress ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Seated French Press',
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
                  colors: [Color.fromARGB(255, 238, 238, 241), Colors.blue],
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
                      'assets/images/img134.jpg', 
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
                    buildExerciseDetail('Equipment Required:', 'Barbell'),
                    buildExerciseDetail('Mechanics:', 'Isolation'),
                    buildExerciseDetail('Secondary Muscle(s):', 'None'),
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
                    buildInstructionStep('1. Set up for the seated French press by loading a barbell or EZ-bar with the appropriate amount of weight and placing it in front of a 90 degree angle bench.'),
                    buildInstructionStep('2. Sit with your back flat against the bench with your feet flat on the floor and barbell resting on your thighs.'),
                    buildInstructionStep('3. Grasp the barbell with an overhand grip with your hands about 8-12 inches apart.'),
                    buildInstructionStep(' 4. Lift the bar above your head and bend at your elbows slightly to take the tension onto your triceps. Your palms are now facing upward. This is the starting position for the exercise.'),
                    buildInstructionStep('5. Keeping your elbow fixed and pointing straight up toward the ceiling, slowly lower the bar down behind your head as far as comfortably possible.'),
                    buildInstructionStep(' 6. Pause, and then slowly raise the bar back to the starting position.'),
                    buildInstructionStep('7. Repeat the step.'),
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
                    buildInstructionStep('1. Technique is really important! Don’t let your elbow flare out as you move the barbell, and keep the rep timing slow and controlled.'),
                    buildInstructionStep('2. Don’t lock your elbow out at the top of the movement and take the tension off of your triceps.'),
                    buildInstructionStep('3. Focus on keeping your body as still as possible, moving only your forerms.'),
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
