import 'package:flutter/material.dart';

class DumbbellLateralRaise extends StatelessWidget {
  const DumbbellLateralRaise ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dumbbell lateral raise',
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
                  colors: [Color.fromARGB(255, 241, 241, 247), Colors.blue],
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
                      'assets/images/img137.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Shoulders'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Dumbbell'),
                    buildExerciseDetail('Mechanics:', 'Isolation'),
                    buildExerciseDetail('Secondary Muscle(s):', 'None'),
                    buildExerciseDetail('Force type:', 'Pull'),
                    const SizedBox(height: 20),
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
                    buildInstructionStep('1. The dumbbell lateral raise is good exercise for building width in your upper body which gives you the “V” shape. Grab a set of dumbbells at your sides.'),
                    buildInstructionStep(' 2. Your palms should be facing your body. You should be holding the dumbbells slightly off your body, as this keeps the tension on side delts. This is your starting position for the exercise.'),
                    buildInstructionStep('3. To execute, slowly raise the dumbbells up to around shoulder height. It’s important that you do not let your wrists go above your elbows while raising the weight, as this will take the work off the side delts and put it on the front delts'),
                    buildInstructionStep('4. Pause at the top of the movement, and then slowly lower the weight back to the strting position.'),
                    buildInstructionStep('5. Do not let the dumbbells touch your body, and then raise them for next rep.'),
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
                    buildInstructionStep('1. The dumbbell lateral raise is one of those exercises that so many people do incorrectly. First, this is an isolation exercise, so you should be focusing on stretch and muscle contraction, not using heavy weights.'),
                    buildInstructionStep('2. Second, you MUST keep your rep timing slow and controlled. So many people use and momentum to swing heavy weights up, and this is not going to get you the best results from the dumbbell lateral raise.'),
                    buildInstructionStep('3. Third, it very important that your elbows stay above your wrists. If your wrists come up too far, the focus comes off your side delts and onto your front delts.'),
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
