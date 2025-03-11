import 'package:flutter/material.dart';
import 'Bench Press.dart';
import 'Barbell Row.dart';
import 'EZ bar Preacher crul.dart';
import 'Floor Crunch .dart';
import 'LegCurl.dart';
import 'Military Press.dart';
import 'SeatedCalfRaise.dart';
import 'Squat.dart';
import 'Bench Dips.dart';
import 'StiffLegDeadlift.dart';
import 'Dumbbell Shrug.dart';
import 'Dumbell Fiy.dart';
import 'Leg Press.dart';
import 'Pushup.dart';
import 'Cable Triceps Extension.dart';
import 'Dumbbell Crul.dart';
import 'InclineBenchPress.dart';
import 'Onearmdumbbellrow.dart';
import 'Plank.dart';
import 'Seated Arnold Press.dart';

class Stage3Exercise3 extends StatelessWidget {
  const Stage3Exercise3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FLEX FITNESS',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Color(0xFF1E1E2C),
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
                  colors: [Color(0xFF1E1E2C), Color(0xFF3A3A56)],
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
                    const Text(
                        'Workout A', textAlign: TextAlign.center,
                         style: TextStyle(
                         fontSize: 24,
                         fontWeight: FontWeight.bold,
                         color: Colors.white,
                         letterSpacing: 1.5,
                       ),
                      ),
                                        const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Bench Press', const BenchPress(),
                        [const Color.fromARGB(255, 206, 203, 203), Colors.blue]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.self_improvement, 'Barbell Row', const BarbellRow(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.arrow_downward, 'EZ Bar Preacher Curls', const EZbarPreachercrul(),
                        [const Color.fromARGB(255, 206, 203, 203), Colors.blue]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.directions_walk, 'Floor Crunch', const FloorCrunch(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Leg Cruls', const Legcurl(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Militray Press', const Militarypress(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Seated Calf Raise', const Seatedcalfraise(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Squats', const Squat(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                        const Text(
                        'Workout B', textAlign: TextAlign.center,
                         style: TextStyle(
                         fontSize: 24,
                         fontWeight: FontWeight.bold,
                         color: Colors.white,
                         letterSpacing: 1.5,
                       ),
                      ),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, ' Dips', const  BenchDips(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Stiff Leg Deddifits', const Stifflegdeadlift(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Floor Crunch', const FloorCrunch(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                        const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Dumbell Shrugs', const DumbbellShrug(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Dumbell Fiy', const DumbellFiy(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                        const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Leg Press', const LegPress(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Push Ups', const Pushup(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                        const SizedBox(height: 20),
                        const Text(
                        'Workout C', textAlign: TextAlign.center,
                         style: TextStyle(
                         fontSize: 24,
                         fontWeight: FontWeight.bold,
                         color: Colors.white,
                         letterSpacing: 1.5,
                       ),
                      ),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Cable Triceps Extension', const  CableTricepsExtension(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Dumbbell Crul', const DumbbellCrul(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Incline Dumbbell\n Bench Press', const InclineBenchPress(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                        const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Leg Cruls', const Legcurl(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'One Arm Dumbbell Row', const Onearmdumbbellrow(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                        const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Plank', const Plank(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Seated Anrold Press', const SeatedArnoldPress(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Squat', const Squat(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                    const SizedBox(height: 20),
                    buildGradientButton(context, Icons.fitness_center, 'Stiff Leg Deddifits', const Stifflegdeadlift(),
                        [Colors.blue, const Color.fromARGB(255, 206, 203, 203)]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGradientButton(
    BuildContext context,
    IconData icon,
    String label,
    Widget destination,
    List<Color> gradientColors,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: gradientColors.last.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28, color: Colors.white),
            const SizedBox(width: 10),
            Text(
              label,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
