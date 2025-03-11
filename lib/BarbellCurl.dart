import 'package:flutter/material.dart';

class Barbellcurl extends StatelessWidget {
  const Barbellcurl ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Barbell Curl',
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
                  colors: [Color.fromARGB(255, 243, 243, 247), Colors.blue],
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
                      'assets/images/img158.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Quads'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Barbell'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('Secondary Muscle(s):', 'Calves, Gluteus, Hamstrings, Lower Back'),
                    buildExerciseDetail('EXPERIENCE LEVEL:', 'Intermediate'),
                    buildExerciseDetail('FORCE TYPE:', 'Push'),
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
                    buildInstructionStep('1. The standing barbell curl is the cornerstone of many bicep building routines. Grasp a barbell or Olympic bar at around shoulder width apart using an underhand grip (palms facing up).'),
                    buildInstructionStep('2. Stand straight up, feet together (you may be more comfortable putting one foot back for stability), back straight, and with your arms fully extended.'),
                    buildInstructionStep('3. The bar should not be touching your body.'),
                    buildInstructionStep('4. Keeping your eyes facing forwards, elbows tucked in at your sides, and your body completely still, slowly curl the bar up.'),
                    buildInstructionStep(' 5. Squeeze your biceps hard at the top of the movement, and then slowly lower it back to the starting position.'),
                    buildInstructionStep(' 6. Repeat for desired reps.'),
                   const SizedBox(height: 20),
                    const Text(
                      ' Barbell Curl Tips:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep(' 1. The single biggest mistake lifters make on this exercise is swinging the body back to assist in moving the weight up. This is cheating! Your body should remain fixed and only your biceps should be used to move the weight.'),
                    buildInstructionStep(' 2. Another mistake is not keeping the elbows fixed and in at the sides. You should not let your elbows come forward when moving the weight up.'),
                    buildInstructionStep('3. And finally, you need to control the weight throughout the set. This means not letting it drop quickly.'),
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
