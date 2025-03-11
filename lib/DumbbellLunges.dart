import 'package:flutter/material.dart';

class Dumbbelllunges extends StatelessWidget {
  const Dumbbelllunges ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dumbbell Lunges',
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
                      'assets/images/img82.jpg', 
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
                    buildExerciseDetail('Equipment Required:', 'Dumbbell'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Push'),
                    buildExerciseDetail('Experience Level:', 'Beginner'),
                    buildExerciseDetail('Secondary Muscle(s):', 'Calves, gluteus, Hamstrings'),
                    const SizedBox(height: 20),
                    const Text(
                      'Dumbbell Lunge Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                     const SizedBox(height: 10),
                    buildInstructionStep('1. Choose a pair of dumbbells and stand up straight with a slight bend in your knees.'),
                    buildInstructionStep('2. Hold the dumbbells down at your sides. You are now in the starting position.'),
                    buildInstructionStep('3. Step forward with your left leg while maintaining your balance and squat down through your hips.'),
                    buildInstructionStep('4. Keep your torso straight and head up. Don\'t allow your knee to track out over your toes.'),
                    buildInstructionStep('5. Push yourself back to the starting position by using your heal to drive you.'),
                    buildInstructionStep('6. Repeat this movement with your right leg and then repeat for desired reps.'),
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
                    buildTip('1. Never allow your knees to track out over your toes during this movement. Doing so will place undue stress on the knee joints.'),
                    buildTip('2. This exercise requires a good deal of balance and is not recommended for those with balance issues.'),
                    buildTip('3. Keep your head up and back straight throughout the exercise. Never allow your back to round.'),
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
