import 'package:flutter/material.dart';

class CoccatrationCrul extends StatelessWidget {
  const CoccatrationCrul ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Concentration crl',
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
                  colors: [Color.fromARGB(255, 241, 241, 245), Colors.blue],
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
                      'assets/images/img101.jpg', 
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
                    buildExerciseDetail('Equipment Required:', 'Dumbbell'),
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
                    buildInstructionStep('1. The concentration curl is an awesome exercise for isolating the biceps! Grab the dumbbell you want to use with your left arm and sit on the end of a bench.'),
                    buildInstructionStep(' 2. Position your feet at slightly wider than shoulder width apart.'),
                    buildInstructionStep('3. Place the back of your upper left arm on the inside of your left thing.'),
                    buildInstructionStep('4. Put your right hand on your right knee for support. You will use your left thing as a back rest throughout the movement.'),
                    buildInstructionStep('5. Start the exercise with your arm fully extended and slowly curls the dumbbell up as far as possible.'),
                    buildInstructionStep('6. Squeeze the bicep hard, and then slowly lower it back to the starting position.'),
                    buildInstructionStep('7. Repeat for desired reps, then the same for your right arm.'),
                   const SizedBox(height: 20),
                    const Text(
                      'Exercise Tip',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. As a general rule you should always work your weakest side first.'),
                    buildInstructionStep(' 2. Keep your entire body fixed throughout the set, only moving your lower arm.'),],
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
