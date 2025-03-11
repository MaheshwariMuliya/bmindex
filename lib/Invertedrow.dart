import 'package:flutter/material.dart';

class Invertedrow extends StatelessWidget {
  const Invertedrow ({super.key});

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inverted row',
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
                  colors: [Color.fromARGB(255, 241, 241, 245), Colors.blue],
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
                      'assets/images/img77.jpg', 
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
                    buildInstructionStep('1. The inverted row is a good exercise for building depth in your upper back. Grab a flat bench and place it length ways in front of the smith machine.'),
                    buildInstructionStep('2. Adjust the height of the smith machine bar so that it\'s around 4ft off the floor.'),
                    buildInstructionStep('3. Position yourself with your heels on the bench and hands grasping the smith machine bar with a slightly wider than shoulder width grip.'),
                    buildInstructionStep('4. Straighten your body out. This is the starting position.'),
                    buildInstructionStep('5. Keeping your body straight, pull your upper body up to the bar.'),
                    buildInstructionStep('6. Pause, and then lower yourself back to the start position.'),
                    buildInstructionStep('7. Repeat for desired reps.'),
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
                    buildTip('1. Position yourself so that when you pull up, the bar touches your middle chest. The bar should not be any higher/lower than that.'),
                    buildTip('2. Keep your body straight, and don\'t let your mid-section sag in the middle.'),
                    buildTip('3. To increase the difficulty add some weight plates on top of your body!'),
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
