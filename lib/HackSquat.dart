import 'package:flutter/material.dart';

class Hacksquat extends StatelessWidget {
  const Hacksquat ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hack Squat',
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
                  colors: [Color.fromARGB(255, 240, 240, 245), Colors.blue],
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
                      'assets/images/img83.jpg', 
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
                    buildExerciseDetail('Equipment Required:', 'Machine'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('Secondary Muscle(s):', 'Gluts, Hamstring calves'),
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
                    buildInstructionStep('1. The hack squat is one of the best exercise for upper leg development. Set up the hack machine by loading the weight you want to use.'),
                    buildInstructionStep('2. Position yourself with your back flat on the pad and shoulder up against the shoulder pads.'),
                    buildInstructionStep('3. Position your feet at around shoulder width apart.'),
                    buildInstructionStep('4. Push up to take the weight off the stack, place your arms on the side handles of the machine and disengage the safety bars. This is the starting position for the movement.'),
                    buildInstructionStep(' 5. Slowly lower the weight down until your thighs are approximately at right angles with your calves.'),
                    buildInstructionStep('6. Pause and then push the weight back up to the starting position without locking your knees at the top of the movement.'),
                    buildInstructionStep('7. Repeat the step.'),
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
                    buildInstructionStep('1. Do not lock your knees out at the top of the reps.'),
                    buildInstructionStep('2. Lower the weight slowly.'),
                    buildInstructionStep('3. Make sure your knees do not track out over your toes as this will cause undue stress to the knees.'),
                    buildInstructionStep('4. Keep your head up throughout the exercise- don\'t look down.'),
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
