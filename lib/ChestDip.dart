import 'package:flutter/material.dart';

class Chestdip extends StatelessWidget {
  const Chestdip ({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Chest Dip',
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
                  colors: [Color.fromARGB(255, 244, 244, 252), Colors.blue],
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
                      'assets/images/img66.jpg', 
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
                    buildExerciseDetail('EXPERIENCE LEVEL:', 'Intermediate'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Bodyweight'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Push(Bilateral)'),
                    buildExerciseDetail('SECONDARY MUSCLE(S):', 'Abs, Shoulders, Triceps'),
                    const SizedBox(height: 20),
                    const Text(
                      'Chest Dip Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Step up on the dip station (if possible) and position your hands with a neutral grip.'),
                    buildInstructionStep('2. Initiate the dip by unlocking the elbows and slowly lowering the body until the forearms are almost parallel with the floor.'),
                    buildInstructionStep('3. Control the descent to parallel and then drive back to the starting position by pushing through the palms.'),
                    buildInstructionStep('4. Repeat for the desired number of repetitions.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Chest Dip Tips:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. Technically there are two ways to perform dips - neither is wrong, just different movement with different purposes: o Staying upright and keeping the elbows in close to increase tricep recruitment. o Leaning forward with elbows wider to increase chest recruitment.'),
                    buildTip('2. If possible, keep the legs straight down while bracing the glutes and abs to limit excessive spinal movement.'),
                    buildTip('3. If no dip station with steps is available, position a box underneath the handles to boost yourself up to the bars.'),
                    buildTip('4. If no box is available, then jump into position.'),
                    buildTip('5. Don’t allow the head to jut forward during the descent.'),
                    buildTip('6. Ensure the elbows stay just short of lockout to keep tension on the triceps.'),
                    buildTip('7. Experiment with a false grip by wrapping the thumb over the bar as this may be more comfortable for some.'),
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
