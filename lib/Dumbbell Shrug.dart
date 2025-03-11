import 'package:flutter/material.dart';

class DumbbellShrug extends StatelessWidget {
  const DumbbellShrug ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dumbbell Shrug',
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
                  colors: [Color.fromARGB(255, 234, 234, 238), Colors.blue],
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
                      'assets/images/img148.jpg', 
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
                    buildInstructionStep('1. Assume a standing position with the dumbbells on both sides of your body. '),
                    buildInstructionStep(' 2. Hinge forward, inhale, and grab the dumbbells with a neutral grip.'),
                    buildInstructionStep(' 3. Stand up tall and ensure your spine remains neutral.'),
                    buildInstructionStep('4. Contract the traps to elevate the shoulders. Squeeze hard at the top and slowly lower the dumbbells back to the starting position.'),
                    buildInstructionStep('5. Repeat for the desired number of repetitions.'),
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
                    buildInstructionStep(' 1. Looking slightly up while shrugging may enhance the contraction as traps help to control movement of the skull. This motion should be smooth and controlled, as a ballistic movement could result in a neck injury.'),
                    buildInstructionStep('2. The traps tend to respond well to high reps and explosive movements (e.g. snatch grip high pulls) so program your accessory work accordingly.'),
                    buildInstructionStep(' 3. Limit momentum and excessive jerking or bouncing of the weight. No one cares about how much you shrug. '),
                    buildInstructionStep('  4. Don’t allow the head to jut forward excessively as you squeeze the traps, this can put the neck in a compromised position and result in an injury.'),
                    buildInstructionStep(' 5. Adding a pause at the top of the movement can help to enhance the mind muscle connection. '),
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
