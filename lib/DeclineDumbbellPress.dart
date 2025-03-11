import 'package:flutter/material.dart';

class DeclineDumbbellPress extends StatelessWidget {
  const DeclineDumbbellPress ({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Decline Dumbbell Press',
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
                  colors: [Color.fromARGB(255, 242, 242, 248), Colors.blue],
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
                      'assets/images/img67.jpg', 
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
                    buildExerciseDetail('EXPERIENCE LEVEL:', 'Intermediate'),
                    buildExerciseDetail('Triceps Exercise type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'dumbbell Mechanics: Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Push'),
                    buildExerciseDetail('SECONDARY MUSCLE(S):', 'Shoulder'),
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
                    buildInstructionStep('1. Set a decline bench to and angle of around 30 degrees.'),
                    buildInstructionStep('2. Grasp a pair of dumbbells and position yourself at the high end of the bench with your legs in the padding.'),
                    buildInstructionStep('3. Slowly lay back on the decline bench and push the dumbbells straight up above your lower chest. Alternatively you could have someone pass you the dumbbells. This is straight position for the exercise.'),
                    buildInstructionStep('4. Slowly lower the dumbbells in a triangle shape until the handles are about level with your chest.'),
                    buildInstructionStep('5. Pause, then slowly raise the weight back up without locking your elbows out at the top.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Decline Dumbbell Bench Press Tips:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. Keep the rep timing slow and control the weight during the set. It should take about twice as long to lower the dumbbells than raise them.'),
                    buildTip('2. Don’t touch the dumbbells together at the top of each rep.'),
                    buildTip('3. Use a full range of motion by allowing the dumbbells to drop down as far as possible on each rep.'),
                    buildTip(' 4. It’s best NOT to drop the dumbbells when you are with your set. This can be hazardous to your shoulder and others nearby.'),
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
