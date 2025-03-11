import 'package:flutter/material.dart';

class InclineDumbbellfly extends StatelessWidget {
  const InclineDumbbellfly ({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Incline Dumbbell Flys',
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
                  colors: [Color.fromARGB(255, 244, 244, 247), Color.fromARGB(255, 244, 244, 247)],
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
                      'assets/images/img72.jpg', 
                      height: 200,
                      width: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Exercise Profile',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildExerciseDetail('Main Muscle Group:', 'Chest'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Dumbbel'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Push(Bilateral)'),
                    buildExerciseDetail('SECONDARY MUSCLE(S):', 'Shoulders'),
                    const SizedBox(height: 20),
                    const Text(
                      'Exercise Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep('1. Incline dumbbell flys hit the upper part of the pectoral muscles. Set up for incline dumbbell flys by setting an incline bench to an angle of around 30-45 degrees.'),
                    buildInstructionStep('2. Grasp a set of dumbbells and sit on the end of the incline bench with the dumbbells resting on your thighs.'),
                    buildInstructionStep('3. Lay back on the bench and extend your arms up, holding the dumbbells with a neutral grip. The dumbbells should not be touching'),
                    buildInstructionStep('4. Keep your feet planted on the floor for balance. Bend your arms slightly. This is starting position for the exercise.'),
                    buildInstructionStep('5. Without pausing, slowly raise the dumbbells back up without locking your elbows out at the top of the exercise.'),
                    buildInstructionStep('6. Without letting the dumbbells touch, slowly lower them back again.'),
                    buildInstructionStep('7. Repeat for desired reps.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Dumbbell Fly Tips:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. Incline flys should be done slowly, focusing on the stretch and contraction of the pectoral muscles.'),
                    buildTip('2. Don’t pause or let the dumbbells touch at the top of the exercise.'),
                    buildTip('3. Use a full range of motion by lowering the dumbbells as far as comfortably possible. 4. Always use a wide semi circle motion when doing this exercise. Don’t allow the dumbbells to come too close to the body.'),
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
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: detail,
              style: const TextStyle(
                color: Colors.black,
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
          color: Colors.black,
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
          color: Colors.black,
        ),
      ),
    );
  }
}
