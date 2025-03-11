import 'package:flutter/material.dart';

class Militarypress extends StatelessWidget {
  const Militarypress ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Military Press',
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
                      'assets/images/img151.jpg', 
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
                    buildExerciseDetail('Equipment Required:', 'Barbell'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('Secondary Muscle(s):', 'Abs, Traps, Triceps Military Press (AKA Overhead Press)'),
                    buildExerciseDetail('EXPERIENCE LEVEL:', 'Intermediate'),
                    const SizedBox(height: 20),
                    const Text(
                      'Overview The military press is a complete shoulder building exercise perfect for building shoulder muscle. The military press is an exercise with many names and is often referred to as the shoulder press, overhead press, and strict press. The military press is used primarily to build the deltoid muscle. It also indirectly targets the other muscles of the shoulder, your triceps, and your core.\nSince the military press is completed standing up, it involves a lot of core strength to help stabilize the spine while pressing weight overhead.\nThere are a number of variations to the military press you can use to target the deltoids from different angles and different ways.\n',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                     const SizedBox(height: 20),
                    const Text(
                      '  Military Press (AKA Overhead Press) Instructions',
                      ),
                    const SizedBox(height: 10),
                    buildInstructionStep(' 1. Adjust the barbell to just below shoulder height then load the desired weight onto the bar.'),
                    buildInstructionStep(' 2. Assume a shoulder width stance and place your hands at (or just outside of) shoulder width with a pronated grip on the bar.'),
                    buildInstructionStep('3. Step underneath the bar and untrack it while keeping the spine in a neutral position.'),
                    buildInstructionStep('4. Take two steps back, inhale, and brace, tuck the chin, then press the bar to lockout overhead.'),
                    buildInstructionStep(' 5. Exhale once the bar gets to lockout and reverse the movement slowly while controlling the bar back to your chest.'),
                    buildInstructionStep('6. Repeat for the desired number of repetitions.'),
                   const SizedBox(height: 20),
                    const Text(
                      'Military Press (AKA Overhead Press) Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep(' 1. Reach tall at the top and don’t worry about keeping the shoulders packed down and back.'),
                    buildInstructionStep('  2. Allow the elbows to rotate and point outward at the top of the movement but tuck them tight to the ribcage at the bottom.'),
                    buildInstructionStep(' 3. Fight to control the bar from rolling your wrists into extension and think about “rolling your knuckles toward the ceiling.”'),
                    buildInstructionStep(' 4. Keep momentum out of the movement and don’t add any additional leg drive by flexing and extending the knees.'),
                    buildInstructionStep('  5. Squeeze your glutes and brace your abs as you press. You shouldn’t be leaning back excessively as you press.'),
                    buildInstructionStep('  6. Imagine you’re trying to look out a window at the top, your ears should be in line with your biceps.'),
                    buildInstructionStep('7. If your shoulders are bothering you during the movement, consider experimenting with a wider grip or utilizing  some of the vertical pressing progressions listed on the site.'),
                    buildInstructionStep('  8. You can use a staggered stance to prevent the lower back from arching excessively but if you still can’t control the anterior core then consider using a half kneeling regression shown on the site.'),
                     
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
