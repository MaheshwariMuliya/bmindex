import 'package:flutter/material.dart';

class StraightArmLatPullDown extends StatelessWidget {
  const StraightArmLatPullDown ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Straight Arm\nLat Pull Down',
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
                  colors: [Color.fromARGB(255, 239, 239, 243), Colors.blue],
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
                      'assets/images/img97.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Lats'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Machine'),
                    buildExerciseDetail('Mechanics:', 'Isolate'),
                    buildExerciseDetail('FORCE TYPE:', 'Pull'),
                    buildExerciseDetail('Secondary Muscle(s):', 'None'),
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
                    buildInstructionStep('1. The straight arm lat pull down is a solid isolation exercise for targeting the upper lats. This exercise is best used as finishing exercise or as a superset/pre-exhaust set. You will need either a high pulley cable machine or a lat pull down machine for this exercise.'),
                    buildInstructionStep(' 2. Attach a straight bar to the high pulley and set the weight you want to use on the stack.'),
                    buildInstructionStep('3. Position yourself in front of the machine around 2-3 feet away, facing the machine.'),
                    buildInstructionStep('4. Grip the straight bar with an overhand grip with your hands at around shoulder width apart.'),
                    buildInstructionStep('5. Keeping your body straight, and your arms straight, take the weight off the stack by moving your arms so they’re parallel to the floor. This is the starting position.'),
                    buildInstructionStep('6. Keeping your arms straight , rotating at the shoulder only, pull the weight down as far as possible without letting the bar touch your body.'),
                    buildInstructionStep('7. Pause and then slowly lower the weight back to the starting position.'),
                    buildInstructionStep('8. Repeat for desired reps.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Exercise Tips:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. This is an isolation exercise – weight is not important! What is important is isolating the lats, keeping your body perfectly still, keeping your body perfectly still, keeping your arms straight and controlling the weight.'),
                    buildInstructionStep('2. You let the weight go up above shoulder height at the top of the movement.'),
                    buildInstructionStep(' 3. Remember to go slow and control the weight. If you’re doing tis exercise right, you’ll feel it!'),
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
