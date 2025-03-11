import 'package:flutter/material.dart';

class Rockingstandingcalfraise extends StatelessWidget {
  const Rockingstandingcalfraise ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rocking Standing \nCalf Raise',
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
                  colors: [Color.fromARGB(255, 234, 234, 241), Colors.blue],
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
                      'assets/images/img88.jpg', 
                      height: 200,
                      width: 100,
                    ),
                     const SizedBox(height: 10),
                     const Text(
                      ' 1. This exercise is best performed inside a squat rack for safety purposes.\n\nTo begin, first set the bar on a rack that best matches your height. Once the correct height is chosen and the bar is loaded, step under the bar and place it on the back of your shoulders (slightly below the neck).',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('2. Hold on to the bar using both arms at each side and lift it off the rack by first pushing with your legs and at the same time straightening your torso.'),
                    buildInstructionStep('3. Step away from the rack and position your legs using a shoulder width medium stance with the toes slightly pointed out. Keep your head up at all times as looking down will get you off balance. Also maintain a straight back and keep the knees with a slight bend; never locked. This will be your starting position.'),
                    buildInstructionStep('4. Raise your heels as you breathe out by extending your ankles as high as possible and flexing your calf. Ensure that the knee is kept stationary at all times. There should be no bending (other than the slight initial bend we created during positioning) at any time. Hold the contracted position by a second before you start to go back down.'),
                    buildInstructionStep(' 5. Go back slowly to the starting position as you breathe in by lowering your heels as you bend the ankles until calves are stretched.'),
                    buildInstructionStep('6. Now lift your toes by contracting the tibia muscles in the front of the calves as you breathe out.'),
                    buildInstructionStep('7. Hold for a second and bring them back down as you breathe in.'),
                    buildInstructionStep(' 8. Repeat for the recommended amount of repetitions. Caution: Maintain your back.'),
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
