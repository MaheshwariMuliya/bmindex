import 'package:flutter/material.dart';

class Onearmdumbbellrow extends StatelessWidget {
  const Onearmdumbbellrow ({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text(
          'One arm dumbbell row',
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
                  colors: [Color.fromARGB(255, 238, 238, 243),Colors.blue],
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
                      'assets/images/img78.jpg', 
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
                    buildInstructionStep('1. Assume a standing position while holding a dumbbell in one hand with a neutral grip.'),
                    buildInstructionStep('2. Hinge forward until your torso is roughly parallel with the floor (or slightly above) and then begin the movement by driving the elbow behind the body while retracting the shoulder blade.'),
                    buildInstructionStep('3. Pull the dumbbell towards your body until the elbow is at (or just past) the midline and then slowly lower the dumbbell back to the starting position under control.'),
                    buildInstructionStep('4. Repeat for the desired number of repetitions on both sides.'),
                    const SizedBox(height: 20),
                    const Text(
                      'One Arm Dumbbell Row Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. Experiment with head position and see which option (looking forward vs. packing the neck) works better for you.'),
                    buildTip('2. Fight the urge to use your opposing arm to brace against your leg or any other implement.'),
                    buildTip('3. Keep some tone through your abdominals as you pull the dumbbell into your body to ensure you don’t arch excessively through your spine.'),
                    buildTip('4. Don’t allow momentum to dictate the movement, control the dumbbells throughout the entirety of each rep.'),
                    buildTip('5. If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).'),
                    buildTip('6. Don’t allow the head to jut forward as you pull.'),
                    buildTip('7. Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint.'),
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
