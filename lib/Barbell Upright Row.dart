import 'package:flutter/material.dart';

class BarbellUprightRow extends StatelessWidget {
  const BarbellUprightRow ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Barbell Upright Row',
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
                  colors: [Color.fromARGB(255, 245, 245, 248), Colors.blue],
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
                      'assets/images/img146.jpg', 
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
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('Secondary Muscle(s):', 'Biceps and Shoulders'),
                    buildExerciseDetail('Force type:', 'Pull'),
                    const SizedBox(height: 20),
                    const Text(
                      'Barbell Upright Row Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. The barbell upright row is one of the best exercises for building the upper traps and shoulders. Load up a barbell with the weight you want to use and stand facing it with your feet at around shoulder width apart.'),
                    buildInstructionStep(' 2. Grasp the barbell with an overhand grip (palms facing down), and hands slightly closer than shoulder width apart.'),
                    buildInstructionStep('3. Pick the bar up, bending at the knees and keeping your back straight.'),
                    buildInstructionStep('4. Keeping your back straight and eyes facing forwards, lift the bar straight up while keeping it as close to your body as possible (you should pull the bar up to around chest height - nearly touching your chin).'),
                    buildInstructionStep(' 5. Pause, and then slowly lower the bar back to the starting position.'),
                    buildInstructionStep('6. Repeat for desired reps.'),
                   const SizedBox(height: 20),
                    const Text(
                      ' Upright Row Tips:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep(' 1. Focus on keeping your elbows higher than your forearms. The elbows push the motion.'),
                    buildInstructionStep('2. Keep your body fixed throughout the set. Don\'t lean forward as you lower the bar, and back as you raise it. Movement of the body makes the upright row easier, and you will not get the mostout of it.'),
                    buildInstructionStep(' 3. Pause and squeeze the traps at the top of the movement, and then lower the bar really slowly if you want to add a bit of intensity to the exercise. '),
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
