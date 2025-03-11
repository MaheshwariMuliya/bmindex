import 'package:flutter/material.dart';

class Stifflegdeadlift extends StatelessWidget {
  const Stifflegdeadlift ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stiff Leg Deadlift',
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
                  colors: [Color.fromARGB(255, 240, 240, 243), Colors.blue],
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
                      'assets/images/img91.jpg', 
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
                    buildExerciseDetail('Main Muscle GROUP:', 'Hamstrings'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Barbell'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Hinge  (Bilateral)'),
                    buildExerciseDetail('Experience Level:', 'Intermediate'),
                    buildExerciseDetail('Secondary Muscle(s):', 'Abs, Adductors, Calves, Gluts, Last, Lower Back, Quads, Traps, Upper Back'),
                    const SizedBox(height: 20),
                    const Text(
                      'Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Position the bar over the top of your shoelaces and assume a hip width stance.'),
                    buildInstructionStep('2. Push your hips back and hinge forward until your torso is nearly parallel with the floor.'),
                    buildInstructionStep('3. Reach down and grasp the bar using a shoulder width, double overhand grip.'),
                    buildInstructionStep('4. Ensure your spine is neutral, shin is vertical, and your hips are roughly the same height as your shoulders.'),
                    buildInstructionStep('5. Drive through the whole foot and focus on pushing the floor away.'),
                    buildInstructionStep('6. Ensure the bar tracks in a straight line as you extend the knees and hips.'),
                    buildInstructionStep('7. Once you have locked out the hips, reverse the movement by pushing the hips back and hinging forward.'),
                    buildInstructionStep('8. Return the bar to the floor, reset, and repeat for the desired number of repetitions.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Stiff Leg Deadlift Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. This style of deadlift will look VERY similar to a conventional deadlift only the lifter will start with higher hips and a vertical shin angle. The hips and shoulders will likely be at just about the same height.'),
                    buildInstructionStep('2. Do not allow the bar to drift away from your body during the lift.'),
                    buildInstructionStep('3. You can start these out a rack (similar to an RDL or the American deadlift) or you can start these off the floor.'),
                    buildInstructionStep('4. Keep soft knees and ensure the movement occurs primarily at your hips. There shouldn’t be any movement within your spine - don’t focus on arching your back.'),
                    buildInstructionStep('5. Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider: o If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin. o On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension. o Experiment with each and see which one works best for your individual anatomy and biomechanics.'),
                    buildInstructionStep('6. Do not worry about retracting your shoulder blades, this is unnecessary and doesn’t carry over to your deadlift.'),
                    buildInstructionStep('7. Make sure you wrap your thumbs around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.'),
                    buildInstructionStep('8. When you hip hinge, you should naturally notice a weight shift to your heels. However, don’t shift your weight so aggressively that your heels come up.'),
                    buildInstructionStep('9. To follow up on my previous point, if you focus on keeping the weight entirely on the heels, you won’t be able to effectively recruit your quads at the beginning of the lift and thus you’ll be slow off the flow. So, to combat this, you should focus on driving through the whole foot - you want 3 points of contact: big toe, little toe, and heel.'),
                    buildInstructionStep('10. Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbows doesn’t break neutral.'),
                  
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
