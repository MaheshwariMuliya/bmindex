import 'package:flutter/material.dart';

class TricepDip extends StatelessWidget {
  const TricepDip ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tricep Dip',
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
                  colors: [Color.fromARGB(255, 246, 246, 250), Colors.blue],
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
                      'assets/images/img149.jpg', 
                      height: 200,
                      width: 100,
                    ),
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
                    buildInstructionStep('1. Many people don\'t know that there are two ways to do dips. Focusing on your triceps, or focusing on your chest. This version of the dip hits the triceps hardest. Grasp the parallel dip bars with an inward grip.'),
                    buildInstructionStep('2. If the bars are adjustable, adjust them in to around shoulder width apart.'),
                    buildInstructionStep('3. Jump up of the floor and take your weight on the bars.'),
                    buildInstructionStep('4. The key to hitting your triceps on this version of the dip is to keep your body as straight as possible and don\'t lean forward. This may mean not crossing your legs and keeping them hanging down.'),
                    buildInstructionStep(' 5. Slowly lower yourself down, keeping your eyes facing forward.'),
                    buildInstructionStep('6. Lower until your elbow is at around the same height as your shoulder, and then raise your body back up without locking your arms at the top of the movement.'),
                    buildInstructionStep('7. Repeat for desired reps.'),
                   const SizedBox(height: 20),
                    const Text(
                      'Tricep Dip Tips: 1',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Do not lower yourself down too far, as this can result in heavy strain on your shoulder joints and possible injury.'),
                    buildInstructionStep(' 2. Use the mind-muscle connection to focus on working your triceps throughout the movement. Squeeze your triceps hard at the top of the movement and feel the stretch on the way down.'),
                    buildInstructionStep('3. Do not lock your elbows out at the top of the movement.'),
                    buildInstructionStep(' 4. And finally, keep the rep timing slow for maximum results from this exercise.'),
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
