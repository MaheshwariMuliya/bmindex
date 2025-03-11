import 'package:flutter/material.dart';

class OneArmCableFrontRaise extends StatelessWidget {
  const OneArmCableFrontRaise ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'One arm cabel front raise',
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
                  colors: [Color.fromARGB(255, 240, 240, 245), Colors.blue],
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
                      'assets/images/img105.jpg', 
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
                    buildExerciseDetail('Equipment Required:', 'Cable'),
                    buildExerciseDetail('Mechanics:', 'Isolation'),
                    buildExerciseDetail('FORCE TYPE:', 'Pull'),
                    buildExerciseDetail('Secondary Muscle(s):', 'None'),
                    const SizedBox(height: 20),
                    const Text(
                      'Exercise Instruction',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. The cable front raise is great exercise for isolating the front delts. set up for the exercise by attaching a single grip handle to a low pulley cable machine and selecting the weight you want to use.'),
                    buildInstructionStep('2. Stand facing away from the machine and grip the handle with your left hand using an overhand grip (palm facing down).'),
                    buildInstructionStep('3. Stand up straight with your eyes forward, holding the handle just off your things pulling weight off the stack. This is the starting position.'),
                    buildInstructionStep('4. To execute, slowly raise the handle up to around shoulder height while keeping your arm straight and your body fixed.'),
                    buildInstructionStep('5. Pause, and then slowly lower the weight to the starting position'),
                    buildInstructionStep(' 6. Do not allow the stack to drop or the handle to tuch your body.'),
                    buildInstructionStep('7. Repeat for desired reps and then repeat using your teghy arm.'),
                   
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
                    buildInstructionStep(' 1. This is an isolation exercise, so the focus should be on form and muscle contraction, not weight.'),
                    buildInstructionStep('2. Keep the rep timing slow and control the weight throughout the set.'),
                    buildInstructionStep('3. Do not allow the handle to touch your body, and do not allow your body to move (or swing) throughout the movement.'),
                    buildInstructionStep('4. The front raise is good exercise to superset with a shoulder pressing exercise.'),],
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
