import 'package:flutter/material.dart';

class CloseGripbenchPress extends StatelessWidget {
  const CloseGripbenchPress ({super.key});

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Close Grip Bench Press',
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
                  colors: [Color.fromARGB(255, 245, 245, 248), Colors.blue],
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
                      'assets/images/img76.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Triceps'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Barbell'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Push(Bilateral)'),
                    buildExerciseDetail('EXPERIENCE LEVEL:', 'Beginner'),
                    buildExerciseDetail('SECONDARY MUSCLE(S):', 'Chest, Shoulders'),
                    const SizedBox(height: 20),
                    const Text(
                      'Close Grip Bench Press Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Lie flat on a bench and set your hands at shoulder width.'),
                    buildInstructionStep('2. Set your shoulder blades by pinching them together and driving them into the bench.'),
                    buildInstructionStep('3. Take a deep breath and allow your spotter to help you with the lift off in order to maintain tightness through your upper back.'),
                    buildInstructionStep('4. Let the weight settle and ensure your upper back remains tight after lift-off.'),
                    buildInstructionStep('5. Inhale and allow the bar to descend slowly by unlocking the elbows.'),
                    buildInstructionStep('6. Lower the bar in a straight line to the base of the sternum (breastbone) and touch the chest.'),
                    buildInstructionStep('7. Push the bar back up in a straight line by pressing yourself into the bench, driving your feet into the floor for leg drive, and extending the elbows.'),
                    buildInstructionStep(' 8. Repeat for the desired number of repetitions.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Close Grip Bench Press Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. Technique first, weight second - no one cares how much you bench if you get injured.'),
                    buildTip('2. Keep the bar in line with your wrist and elbows and ensure it travels in a straight line. To keep the wrist straight, try to position the bar as low in the palm as possible while still being able to wrap the thumb.'),
                    buildTip('3. If you want to keep more tension through the triceps and chest, stop each repetition just short of lockout at the top.'),
                    buildTip('4. The elbows will be tucked more than a normal bench due to the decrease grip width but if you experience shoulder pain during this variation you may have to slightly tweak grip width and elbow tuck to provide more space within the shoulder capsule.'),
                    buildTip('5. Arching may be advisable depending upon your goals but ensure that most of the arch comes from the mid to upper back and not your lower back. If your lower back is cramping as you set up for the lift, you’re out of position and putting yourself at risk for potential injury.'),
                    buildTip('6. The bar should touch your chest with every single repetition. If you want to overload specific ranges of motion, look into board presses or accommodating resistance with chains or bands.'),
                    buildTip('7. As the bar descends, aim for your sternum (breastbone) or slightly below depending upon the length of your upper arm to promote a linear bar path.'),
                    buildTip('8. Intermediate and advanced lifters may use a thumbless or “suicide” grip but for the majority of lifters, it would be wiser to learn how to bench with the thumb wrapped around the bar at first.'),
                    buildTip('9. Fight to the urge to allow the wrists to roll back into extension, think about rolling your knuckles toward the ceiling.'),
                    buildTip('10. Experiment with grip width - if your have longer arms you may need to use a slightly wider grip. However, if you’re feeling pressure in the front of the shoulder during the exercise, you may need to widen your grip, improve scapular retraction, or slightly lessen the range of motion via exercises such as floor or board presses.'),
                    buildTip('11. Squeeze the bar as tightly as possible to help enhance shoulder stability.'),
                    buildTip('12. Some lifters prefer to tuck their toes while other prefer to keep the feet flat to optimize leg drive - experiment with both and see which one feels and allows for greater power production.'),
                    buildTip('13. Ensure the shoulder blades remain retracted and don’t allow them to change position as you press.'),
                    buildTip('14. The bar should descend under control and touch the lifter’s chest - no bouncing or excess momentum.'),
                    buildTip('15. Think about trying to push yourself away from the bar instead of pushing the bar off of you.'),
                    buildTip('16. Tightness through the upper back should be one of your main priorities throughout the course of the lift.'),
                    buildTip('17. Ideally, use a spotter to help assist with the lift off in order to maintain tension through the upper back.'),
                    buildTip('18. Keep the feet quiet throughout the lift and utilize leg drive by pushing your feet into the floor and squeezing your glutes to stabilize the pelvis.'),
                    buildTip('19. Focus on pulling the bar apart or trying to “bend the bar” to activate some of the intrinsic stabilizers in the shoulder.'),
                    buildTip('20. The glutes and shoulder blades should maintain contact with the bench throughout the entirety of the movement.'),
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
