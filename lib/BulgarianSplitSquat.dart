import 'package:flutter/material.dart';

class Bulgariansplitsquat extends StatelessWidget {
  const Bulgariansplitsquat ({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bulgarian Split Squat',
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
                  colors: [Color.fromARGB(255, 239, 239, 247), Colors.blue],
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
                      'assets/images/img85.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Chest'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Barbell'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Push (Bilateral)'),
                    buildExerciseDetail('Experience Level:', 'Intermediate'),
                    buildExerciseDetail('Secondary Muscle(s):', 'Shoulders'),
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
                    buildInstructionStep('1. Set up for the one leg dumbbell squat by choosing a pair of dumbbell and standing about 2 to 3 feet in front of a flat bench or some other elevated platform'),
                    buildInstructionStep('2. You should be facing away from the bench with the dumbbells down at your sides.'),
                    buildInstructionStep('3. Now carefully extend your right leg behind you and place the top of your foot securely on the bench.'),
                    buildInstructionStep('4. Keeping your eyes facing forwards slowly lower your body down by bending at the left knee.'),
                    buildInstructionStep('5. Inhale and allow the bar to descend slowly by unlocking the elbows.'),
                    buildInstructionStep('5. Don’t lean forward as you come down. Your buttocks should come out and drop straight down. 6. Squat down until your left thigh is parallel with the floor, and then slowly raise your body back up by pushing through your heel.'),
                    buildInstructionStep('7. Do not lock the knee out when you stand up.'),
                    buildInstructionStep('8. Repeat the step.'),
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
                    buildInstructionStep('1. This exercise requires a good deal of balance so start off by using a very light weight.'),
                    buildInstructionStep('2. The higher you raise the platform, the more challenging the exercise becomes.'),
                    buildInstructionStep('3. It’s crucially the important that you keep a straight back when you squat! You can ensure your back is straight by keeping your eyes facing forward, chest out, shoulder blades back, and back arched. Keep your core muscles tensed throughout the movement to help hold your back in place.'),
                    buildInstructionStep('4. Always push up through your heels. Curling up your toes can help you get the technique right.'),
                    buildInstructionStep('5. Don’t allow your torso to lean forward. This happens when your hips move up faster than your shoulders. To prevent this keep the rep timing slow and controlled and stick your buttocks out as you go down.'),
                    buildInstructionStep('6. When you squat down, your hips should be dropping straight down, not coming forward. Using a light weight, perfect your form standing side on to a mirror. Your knees should never track out and over your toes.'),
                    buildInstructionStep(' 7. Keep your head up and look forward. As'),
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
