import 'package:flutter/material.dart';
import 'Barbell Front Raise.dart';
import 'Dumbbell Lateral Raise.dart';
import 'Machine Lateral Raise.dart';
import 'One Arm Cable Front Raise.dart';
import 'Seated Arnold Press.dart';
import 'Seated Barbell Press.dart';
import 'Seated Barbell Press Behind Neck.dart';
import 'Smith Machine Shoulder Press.dart';
import 'Seated Dumbbell Press.dart';
import 'Seated Bent Over Dumbbell Reverse Fly.dart';

class Shoulders extends StatelessWidget {
  const Shoulders({super.key});

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
                  colors: [Color.fromARGB(255, 241, 241, 245), Colors.blue],
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
                    buildSimpleButton(context, Icons.fitness_center, 'Barbell Front Raise', const BarbellFrontRaise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.accessibility_new, 'Dumbbell Lateral Raise', const DumbbellLateralRaise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.precision_manufacturing, 'Machine Lateral Raise', const MachineLateralRaise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.cable, 'One Arm Cable Front\n Raise', const OneArmCableFrontRaise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_gymnastics, 'Seated Arnold Press', const SeatedArnoldPress()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.fitness_center, 'Seated Barbell Press\n Behind Neck', const SeatedBarbellPressBehindNeck()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.fitness_center, 'Seated Barbell Press', const SeatedBarbellPress()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.fitness_center, 'Seated Bent Over \nDumbbell Reverse Fly', const SeatedBentOverDumbbellReverseFly()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_gymnastics, 'Seated Dumbbell Press', const SeatedDumbbellPress()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.precision_manufacturing, 'Smith Machine Shoulder\n Press', const SmithMachineShoulderPress()),    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSimpleButton(BuildContext context, IconData icon, String label, Widget destination) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade400, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400.withOpacity(0.5),
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
              Icon(icon, size: 28, color: const Color(0xFF1E1E2C)),
              const SizedBox(width: 10),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E1E2C),
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
