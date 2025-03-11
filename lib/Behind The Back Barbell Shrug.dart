import 'package:flutter/material.dart';

class BehindTheBackBarbellShrug extends StatelessWidget {
  const BehindTheBackBarbellShrug ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Behind TheBack Barbell Shrug',
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
                  colors: [Color.fromARGB(255, 241, 241, 243), Colors.blue],
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
                      'assets/images/img147.jpg', 
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
                    buildInstructionStep(' 1. Set up for the behind the back barbell shrug by loading up the weight you want to use on a straight bar or Olympic bar.'),
                    buildInstructionStep('  2. Stand facing away from the bar with your feet about shoulder width apart.'),
                    buildInstructionStep('3. Grasp the bar with an overhand grip (palms facing behind you), with your hands about shoulder width apart.'),
                    buildInstructionStep(' 4. Bending at the knees only, pick the barbell up off the floor behind your back. You may have a training partner assist you.'),
                    buildInstructionStep('5. Keeping the barbell close to your body, let your shoulders "sag" as far as possible. This is the starting position for the exercise.'),
                    buildInstructionStep('6. Slowly shrug your shoulders up as far as possible.'),
                    buildInstructionStep( '7. Pause, and then slowly lower the barbell back to the starting position.'),
                    buildInstructionStep( '8. Repeat for desired reps.'),
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
                    buildInstructionStep('1. Focus on lifting the weight with your traps and not your biceps.'),
                    buildInstructionStep('2. Pausing at the top of the barbell shrug makes the exercise more challenging and you\'ll get more out of it. Try and pause for a count of 1-3 at the top of each rep.'),
                    buildInstructionStep('3. There\'s no benefit to roll your shoulders forward or back when you shrug - that\'s a myth! Just raise the barbell straight up and straight down.'),
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
