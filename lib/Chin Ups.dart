import 'package:flutter/material.dart';

class ChinUps extends StatelessWidget {
  const ChinUps ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Chin Up',
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
                  colors: [Color.fromARGB(255, 242, 242, 247), Colors.blue],
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
                      'assets/images/img94.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Last'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Bodyweight'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Push (Bilateral)'),
                    buildExerciseDetail('Experience Level:', 'Beginner'),
                    buildExerciseDetail('Secondary Muscle(s):', 'Abs, Biceps, Shoulders, Upper Back'),
                    const SizedBox(height: 20),
                    const Text(
                      'Chin Up Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Using a supinated grip, grasp the bar with a shoulder width grip.'),
                    buildInstructionStep('2. Take a deep breath, squeeze your gluteus and brace your abs. Depress the shoulder blades and then drive the elbows straight down to the floor while activating the last.'),
                    buildInstructionStep('3. Pull your chin towards the bar until the last are fully contracted, then slowly lower yourself back to the start position and repeat for the assigned number of repetitions.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Chin Up Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. To decrease bicep involvement, use a false (thimbles grip).'),
                    buildInstructionStep(' 2. Try to keep a neutral head position (looking straight ahead or slightly up) as hyperextending the neck can lead to compensations throughout the spine.'),
                    buildInstructionStep(' 3. If the bar is high enough, keep the legs straight and in front of the body.'),
                    buildInstructionStep(' 4. Avoid falling into overextension of the lumbar spine by squeezing your gluteus and bracing your abs.'),
                    buildInstructionStep(' 5. The chin-up is completed when the last are fully flexed, don’t continue pulling and compensate with the peck.'),
                    buildInstructionStep('6. Imagine you’re trying to drive the elbows down as you pull.'),
                    buildInstructionStep('7. Keep your shoulders down and back, if they round forward at the top then you’ve pulled too far.'),
                    buildInstructionStep(' 8. A lifter’s segment length will determine whether or not they can actually get their chin over the bar, it’s not an absolute for everyone.'),
                    buildInstructionStep('9. Lower to almost full extension of the elbow but avoid locking out completely as this can place excessive strain on the ligamentous structures within the elbow and shoulder.'),
                    buildInstructionStep('10. If you can’t complete a single bodyweight chin up, start with slow negatives or flexed arm hangs at the top position'),
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
