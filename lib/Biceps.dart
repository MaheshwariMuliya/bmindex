import 'package:flutter/material.dart';
import 'Alternate Seated Dumbbell Curl.dart';
import 'Biceps Machine Curl.dart';
import 'Cable Curl.dart';
import 'Coccatration Crul.dart';
import 'EZ bar Preacher crul.dart';
import 'EZ Bar curl.dart';
import 'Incline bench Dumbbell Curl.dart';
import 'One Arm Cable Front Raise.dart';
import 'Standing Hammer Curl.dart';
import 'Standing High Pulley Cable Curl.dart';

class Biceps extends StatelessWidget {
  const Biceps({super.key});

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
                  colors: [Color.fromARGB(255, 236, 236, 241), Colors.blue],
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
                    buildSimpleButton(context, Icons.fitness_center, 'Alternate Seated\n Dumbbell Curl', const AlternateSeatedDumbbellCurl()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.precision_manufacturing, 'Biceps Machine Curl', const BicepsMachineCurl()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.cable, 'Cable Curl', const CableCurl()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.self_improvement, 'Concentration Curl', const CoccatrationCrul()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_bar, 'EZ Bar Preacher Curl', const EZbarPreachercrul()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_bar, 'EZ Bar Curl', const EZBarcurl()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.fitness_center, 'Incline Bench Dumbbell\n Curl', const InclinebenchDumbbellCurl()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.one_x_mobiledata, 'One Arm Cable Front\n Raise', const OneArmCableFrontRaise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.gavel, 'Standing Hammer Curl', const StandingHammerCurl()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.arrow_downward, 'Standing High Pulley\n Cable Curl', const StandingHighPulleyCableCurl()),
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
