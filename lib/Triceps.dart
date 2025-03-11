import 'package:flutter/material.dart';
import 'Alternate Bent Over Dumbbell Kickback.dart';
import 'Bench Dips.dart';
import 'Cable Triceps Extension.dart';
import 'High Pulley Overhead Triceps Extension.dart';
import 'Lying Triceps Extension.dart';
import 'One Arm Standing Dumbbell row.dart';
import 'Reverse Grip Cable Triceps.dart';
import 'Seated French Press.dart';
import 'Two Arm Seated Dumbbell Extension.dart';
import 'Lying Dumbbell Extension row.dart';

class Triceps extends StatelessWidget {
  const Triceps({super.key});

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
                  colors: [Color.fromARGB(255, 239, 239, 243), Colors.blue],
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
                    buildSimpleButton(context, Icons.fitness_center, 'Alternate Bent Over\n Dumbbell Kickback', const AlternateBentOverDumbbellKickback()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.event_seat, 'Bench Dips', const BenchDips()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.cable, 'Cable Triceps Extension', const CableTricepsExtension()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.arrow_circle_up, 'High Pulley Overhead\n Triceps Extension', const HighPulleyOverheadTricepsExtension()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.bed, 'Lying Dumbbell\n Extension Row', const LyingDumbbellExtensionrow()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.bed, 'Lying Triceps Extension', const LyingTricepsExtension()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.one_x_mobiledata, 'One Arm Standing \nDumbbell Row', const OneArmStandingDumbbellrow()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.swap_vert, 'Reverse Grip Cable\n Triceps', const ReverseGripCableTriceps()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.chair, 'Seated French Press', const SeatedFrenchPress()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.fitness_center, 'Two Arm Seated\n Dumbbell Extension', const TwoArmSeatedDumbbellExtension()),    
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
