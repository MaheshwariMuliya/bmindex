import 'package:flutter/material.dart';

class BentoverDumbbellRow extends StatelessWidget {
  const BentoverDumbbellRow ({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Bent over Dumbbell Row',
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
                  colors: [Color.fromARGB(255, 243, 243, 247), Colors.blue],
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
                      'assets/images/img75.jpg', 
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
                    buildExerciseDetail('Main Muscle Group:', 'Upper Back'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Barbell'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Push(Bilateral)'),
                    buildExerciseDetail('EXPERIENCE LEVEL:', 'Beginner'),
                    buildExerciseDetail('SECONDARY MUSCLE(S):', 'Abs, Biceps, Last, Lower Back, Shoulders'),
                    const SizedBox(height: 20),
                    const Text(
                      'Bent over Row Overview',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('The bent over row is a back day staple exercise and is considered one of the best muscle building back building exercises you can do.'),
                    buildInstructionStep('Sometimes referred to as the barbell row, the bent over row is a staple movement in most muscle building workouts.'),
                    buildInstructionStep('Those looking to build muscle utilize the bent over row to target their back, bicep and core muscle.'),
                    buildInstructionStep('Those in powerlifting and strength circles perform bent over rows to increase their strength on the big 3 movements.'),
                    buildInstructionStep('The bent over row is typically used to build and strengthen the muscles of the upper back (latissimus dorsi, rhomboids, and trapezius).'),
                    buildInstructionStep('However, it requires assistance from muscles of the low back, core, and arms to perform a bent over row correctly. There are several variations of the bent over row one can and should perform.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Bent over Row Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. Assume a standing position while holding the bar using a double overhand grip.'),
                    buildTip('2. Hinge forward until your torso is roughly parallel with the floor (or slightly above) and then begin the movement by driving the elbows behind the body while retracting the shoulder blades.'),
                    buildTip('3. Pull the bar towards your belly button until it touches your body and then slowly lower the bar back to the starting position under control.'),
                    buildTip('4. Repeat for the desired number of repetitions.'),
                     const SizedBox(height: 20),
                    const Text(
                      'Bent over Row Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    buildTip('1. Experiment with head position and see which option (looking forward vs. packing the neck) works better for you.'),
                    buildTip('2. Keep some tone through your abdominals as you pull the bar into your body to ensure you don’t arch excessively through your spine.'),
                    buildTip('3. Don’t allow momentum to dictate the movement, control the bar throughout the entirety of each rep.'),
                    buildTip('4. Don’t allow the head to jut forward as you pull.'),
                    buildTip('5. Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glen humeral joint.'),
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
