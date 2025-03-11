import 'package:flutter/material.dart';

class Seatedcablerow extends StatelessWidget {
  const Seatedcablerow ({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Seated cable row',
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
                  colors: [Color.fromARGB(255, 242, 242, 245), Colors.blue],
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
                      'assets/images/img79.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Upper Back'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Cable'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Pull'),
                    buildExerciseDetail('EXPERIENCE LEVEL:', 'Beginner'),
                    buildExerciseDetail('SECONDARY MUSCLE(S):', 'Biceps, Last, Shoulders'),
                    const SizedBox(height: 20),
                    const Text(
                      'Seated Cable Row Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Set the appropriate weight on the weight stack and attach a close grip bar or V-bar to the seated row machine.'),
                    buildInstructionStep('2. Grasp the bar with a neutral grip (palms facing in).'),
                    buildInstructionStep('3. Keeping your legs slightly bent and your back straight, pull the weight up slightly off the stack. You should be sitting straight upright with your shoulders back. This is the starting position.'),
                    buildInstructionStep('4. Keeping your body in position, pull the handle into your stomach.'),
                    buildInstructionStep('5. Pull your shoulder blades back, squeeze, pause, and then slowly lower the weight back to the starting position.'),
                    buildInstructionStep(' 6. Repeat for desired reps.'),
                    const SizedBox(height: 20),
                    const Text(
                      ' Exercise Tips:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. Your back must remain straight at all times. Your torso should be kept still throughout the entire set.'),
                    buildTip('2. Don\'t let your shoulders hunch over when your arms are extended.'),
                    buildTip('3. Use the back muscles to move the weight - do not lean forward and use momentum to swing the weight back.'),
                    buildTip('4. Pausing and squeezing at the top of the movement for a 1-2 count will increase intensity and results.'),
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
