import 'package:flutter/material.dart';

class InclinebenchDumbbellCurl extends StatelessWidget {
  const InclinebenchDumbbellCurl ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Incline bench Dumbbell Curl',
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
                  colors: [Color.fromARGB(255, 233, 233, 238), Colors.blue],
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
                      'assets/images/img104.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Biceps'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'dumbbell '),
                    buildExerciseDetail('Mechanics:', 'Isolation'),
                    buildExerciseDetail('FORCE TYPE:', 'Pull'),
                    buildExerciseDetail('Secondary Muscle(s):', 'None '),
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
                    buildInstructionStep('1. The incline bench dumbbell curl is a good experience to totally isolated d the bicep muscle. Set an adjustable bench to an angle of around 45 degrees.'),
                    buildInstructionStep('2. Grab a dumbbell and position yourself at the highest end of the bench.'),
                    buildInstructionStep('3. Rest the back of your upper arm on the bench padding and allow your arm to fully extend until the dumbbell is almost touching the bench.'),
                    buildInstructionStep('4. You should be holding the dumbbell using an understand grip, plam facing up.'),
                    buildInstructionStep('5. Use your other arm for support by holding the bench.'),
                    buildInstructionStep('6. Tense your bicep and slowly curl it up as far as possible.'),
                    buildInstructionStep('7. Squeeze the muscle, and then slowly lower back to the starting position.'),
                    buildInstructionStep('8. Repeat for desired reps, and then repeat for the other arm.'),
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
                    buildInstructionStep(' 1. Don’t let the dumbbells touch the bench during the set.'),
                    buildInstructionStep('2. Keep the rep timing slow and control the weigth on the way down.'),
                    buildInstructionStep('3. Always work your weakest arm first. For most, this is the left arm.'),],
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
