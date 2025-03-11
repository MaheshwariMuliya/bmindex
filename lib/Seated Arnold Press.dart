import 'package:flutter/material.dart';

class SeatedArnoldPress extends StatelessWidget {
  const SeatedArnoldPress ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Seated Arnold Press',
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
                      'assets/images/img139.jpg', 
                      height: 200,
                      width: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      ' Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Set up an adjustable angle bench to 90 degrees and select the desired weight from the rack.'),
                    buildInstructionStep(' 2. Pick up the dumbbells from the floor using a neutral grip (palms facing in). Position the end of the dumbbells on your knees and sit down on the bench.'),
                    buildInstructionStep('3. Using a safe and controlled motion, kick your knees up one at a time in order to get each dumbbell into place.'),
                    buildInstructionStep(' 4. Once the dumbbells are in place, rotate your palms so they are facing you.'),
                    buildInstructionStep('5. Take a deep breath then press the dumbbells overhead by extending the elbows and contracting the deltoids.'),
                    buildInstructionStep(' 6. As you press, rotate the dumbbells until your palms are facing forward.'),
                    buildInstructionStep(' 7. Slowly lower the dumbbells back to the starting position (the arms should be roughly 90 degrees or slightly lower depending upon limb lengths).'),
                    buildInstructionStep(' 8. Repeat for the desired number of repetitions.'),
                   const SizedBox(height: 20),
                    const Text(
                      ' Seated Arnold Press Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Keep your back flat against the pad throughout the duration of the exercise.'),
                    buildInstructionStep('2. Don’t allow the head to jut forward excessively.'),
                    buildInstructionStep('3. Drive the bicep to the ear and exhale as you press.'),
                    buildInstructionStep('4. If you sense any pressure in your neck or traps during the movement, look to address a lack of thoracic spine extension or shoulder flexion.'),
                    buildInstructionStep('5. Keeping the elbows slightly bent at the top and not locking out entirely will help to keep tension on the shoulders.'),
                    buildInstructionStep('6. If you can’t lock out the elbows overhead than it may indicate a lack of shoulder mobility due to poor scapular upward rotation.'),
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
