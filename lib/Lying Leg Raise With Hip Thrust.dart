import 'package:flutter/material.dart';

class LyingLegRaiseWithHipThrust extends StatelessWidget {
  const LyingLegRaiseWithHipThrust ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lying Leg Raise With Hip Thrust',
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
                  colors: [Color.fromARGB(255, 244, 244, 247), Colors.blue],
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
                      'assets/images/img119.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Abs'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Bodyweight'),
                    buildExerciseDetail('Mechanics:', 'Isolation'),
                    buildExerciseDetail('Secondary Muscle(s):', 'None'),
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
                    buildInstructionStep(' 1. The lying bench leg raise with hip thrust is a great exercise for hitting your abdominal muscles. Set up for the exercise by getting a flat bench and positioning it to give enough room for your legs to extend out one end.'),
                    buildInstructionStep('2. Sit on the bench with your buttocks close to one end, then lay back. '),
                    buildInstructionStep('3. Grasp the bench at head height for stability.    '),
                    buildInstructionStep(' 4. Extend your legs straight out level with your body, keeping your knees and feet together. This is the starting position for the movement. '),
                    buildInstructionStep(' 5. Bending at the hips only, slowly raise your legs up until they are pointing straight up. '),
                    buildInstructionStep('6. At this point lift your pelvis off the bench as high as possible.'),
                    buildInstructionStep('7. Lower your pelvis back down, and slowly lower your feet back to the starting position.'),
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
                    buildInstructionStep('1. Complete the entire exercise slowly.'),
                    buildInstructionStep('2. Add intensity by pausing at the top of the hip thrust, or hold a dumbbell with your feet.'),
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
