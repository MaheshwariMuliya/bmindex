import 'package:flutter/material.dart';

class InclineDumbbellBenchcompete extends StatelessWidget {
  const InclineDumbbellBenchcompete ({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Incline Dumbbell Bench',
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
                  colors: [Color.fromARGB(255, 238, 238, 241), Colors.blue],
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
                      'assets/images/img71.jpg', 
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
                    buildExerciseDetail('EXPERIENCE LEVEL:', 'Beginner'),
                    buildExerciseDetail('Exercise Type:', 'Strength'),
                    buildExerciseDetail('Equipment Required:', 'Bodyweight'),
                    buildExerciseDetail('Mechanics:', 'Compound'),
                    buildExerciseDetail('FORCE TYPE:', 'Push(Bilateral)'),
                    buildExerciseDetail('SECONDARY MUSCLE(S):', 'Shoulders, Triceps'),
                    const SizedBox(height: 20),
                    const Text(
                      'Incline Dumbbell Bench Press Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildInstructionStep(' 1. Pick up the dumbbells off the floor using a neutral grip (palms facing in). Position the ends of the dumbbells in your hip crease, and sit down on the edge of an incline bench.'),
                    buildInstructionStep(' 2. To get into position, lay back and keep the weights close to your chest. Once you are in position, take a deep breath, and press the dumbbells to lockout at the top.'),
                    buildInstructionStep(' 3. Slowly lower the dumbbells under control as far as comfortably possible (the handles should be about level with your chest).'),
                    buildInstructionStep('4. Contract the chest and push the dumbbells back up to the starting position.'),
                    buildInstructionStep('5. Repeat for the desired number of repetitions. **Dropping the dumbbells to the side is discouraged unless you are experienced with the technique or using excessively heavy weights. **Ideally you should twist the dumbbells back to neutral (palms facing each other), bring your knees up so the ends of the dumbbells are touching your thighs, then use the weight of the dumbbells to rock back to an upright, seated position.'),
                    const SizedBox(height: 20),
                    const Text(
                      'Incline Dumbbell Bench Press Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. Maintain more tension through the pecs by not locking out the elbows entirely.'),
                    buildTip('2. Keep the weights slightly tilted at a 45 degree angle in order to keep the elbows in a neutral position.'),
                    buildTip('3. Don’t allow the dumbbells to collide at the top of each rep - bouncing them together may cause you to lose stability within the shoulder and injure yourself.'),
                    buildTip('4. Squeeze the dumbbells as tight as possible to improve a phenomenon known as “irradiation” which promotes greater shoulder stability.'),
                    buildTip('5. Keep your shoulder blades pinched together to ensure the shoulders remain in a safe position.'),
                    buildTip(' 6. Imagine you’re trying to push yourself away from the weights rather than pushing the weights away from yourself.'),
                    buildTip(' 7. If you’re feeling pain within the shoulder joint itself (specifically at the front), ensure your shoulder blades are slightly retracted and try to keep the shoulder girdle “packed”.'),
                    buildTip(' 8. Ensure you maintain some tension in your abs and don’t allow your lower back to excessive arch.'),
                    buildTip(' 9. Keep your feet flat on the floor and don’t allow the lower body to move during the set.'),
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
