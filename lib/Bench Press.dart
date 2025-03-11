import 'package:flutter/material.dart';

class BenchPress extends StatelessWidget {
  const BenchPress ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bench Press',
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
                  colors: [Color.fromARGB(255, 248, 248, 252), Colors.blue],
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
                      'assets/images/img154.jpg', 
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
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Barbell'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('Secondary Muscle(s):', 'Shoulders'),
                    buildExerciseDetail('EXPERIENCE LEVEL:', 'Intermediate'),
                    buildExerciseDetail('Force type:', 'Push (Bilateral)'),
                    const SizedBox(height: 20),
                    const Text(
                      'Triceps Barbell Bench Press Overview',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'The barbell bench press is a classic exercise popular among all weight lifting circles. From bodybuilders to powerlifters, the bench press is a staple chest exercise in nearly every workout program.\nFor powerlifters, it is known as one of the “big three” lifts which includes the squat, deadlift, and bench press. For athletes, 1 rep max on bench press is a good indicator for on field/court performance. And for bodybuilders, the bench press is a compound exercise that targets many of the muscles in your upper body.\n\nBy performing the bench press, you primarily work your pectoralis major (your chest). Other muscles which assist in moving the barbell during a bench press are other muscles of the chest, triceps, and shoulders. Not everyone is built to perform the traditional barbell bench press, so several variations have been created to ensure people can train this crucial movement pattern in a safe and comfortable way',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Barbell Bench Press Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Lie flat on a bench and set your hands just outside of shoulder width.'),
                    buildInstructionStep('2. Set your shoulder blades by pinching them together and driving them into the bench.'),
                    buildInstructionStep(' 3. Take a deep breath and allow your spotter to help you with the lift off in order to maintain tightness through your upper back.'),
                    buildInstructionStep('4. Let the weight settle and ensure your upper back remains tight after lift off.'),
                    buildInstructionStep('5. Inhale and allow the bar to descend slowly by unlocking the elbows.'),
                    buildInstructionStep('6. Lower the bar in a straight line to the base of the sternum (breastbone) and touch the chest.'),
                    buildInstructionStep('7. Push the bar back up in a straight line by pressing yourself into the bench, driving your feet into the floor for leg drive, and extending the elbows.'),
                    buildInstructionStep('8. Repeat for the desired number of repetitions.'),
                   const SizedBox(height: 20),
                    const Text(
                      'Barbell Bench Press Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Technique first, weight second - no one cares how much you bench if you get injured.'),
                    buildInstructionStep(' 2. Keep the bar in line with your wrist and elbows and ensure it travels in a straight line. In order to keep the wrist straight, try to position the bar as low in the palm as possible while still being able to wrap the thumb.'),
                    buildInstructionStep(' 3. If you want to keep more tension through the triceps and chest, stop each repetition just short of lockout at the top. '),
                    buildInstructionStep('4. Don’t worry about tucking the elbows excessively, much of this advice is from geared lifters using suits. A slight tuck on the way down may be advisable for some lifters but other lifters can use an excellent cue from Greg Nickolas that will accomplish the same thing: “Flare and push”.'),
                    buildInstructionStep('5. Arching may be advisable depending upon your goals but ensure that most of the arch comes from the mid to upper back and not your lower back. If your lower back is cramping as you set up for the lift, you’re out of position and putting yourself at risk for potential injury.'),
                    buildInstructionStep('6. The bar should touch your chest with every single repetition. If you want to overload specific ranges of motion, look into board presses or accommodating resistance with chains or bands.'),
                    buildInstructionStep('7. As the bar descends, aim for your sternum (breastbone) or slightly below depending upon the length of your upper arm in order to promote a linear bar path.'),
                    buildInstructionStep('8. Intermediate and advanced lifters may use a thimbles or “suicide” grip but for the majority of lifters, it would be wiser to learn how to bench with the thumb wrapped around the bar at first.'),
                    buildInstructionStep('9. Fight to the urge to allow the wrists to roll back into extension, think about rolling your knuckles toward the ceiling.'),
                    buildInstructionStep('10. Experiment with grip width - if your have longer arms you may need to use a slightly wider grip. However, if you’re feeling pressure in the front of the shoulder during the exercise, you may need to widen your grip, improve scapular retraction, or slightly lessen the range of motion via exercises such as floor or board presses.'),
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
