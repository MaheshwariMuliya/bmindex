import 'package:flutter/material.dart';
import 'Chest.dart';
import 'Middleback.dart';
import 'Lowerback.dart';
import 'Legs.dart';
import 'Lats.dart';
import 'Biceps.dart';
import 'Triceps.dart';
import 'Shoulders.dart';
import 'Traps.dart';
import 'Abs.dart';
import 'ForeArms.dart';

class ExerciseGuide extends StatelessWidget {
  const ExerciseGuide({super.key});

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
                  colors: [Color.fromARGB(255, 237, 237, 241),Colors.blue],
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
                    buildSimpleButton(context, Icons.fitness_center, 'Chest', const Chest()),
                    buildSimpleButton(context, Icons.accessibility, 'Middle Back', const Middleback()),
                    buildSimpleButton(context, Icons.airline_seat_recline_extra, 'Lower Back', const Lowerback()),
                    buildSimpleButton(context, Icons.directions_run, 'Legs', const Legs()),
                    buildSimpleButton(context, Icons.rowing, 'Lats', const Lats()),
                    buildSimpleButton(context, Icons.pan_tool, 'Biceps', const Biceps()),
                    buildSimpleButton(context, Icons.front_hand, 'Triceps', const Triceps()),
                    buildSimpleButton(context, Icons.accessibility_new, 'Shoulders', const Shoulders()),
                    buildSimpleButton(context, Icons.sync, 'Traps', const Traps()),
                    buildSimpleButton(context, Icons.sports_gymnastics, 'ABS', const Abs()),
                    buildSimpleButton(context, Icons.back_hand, 'ForeArms', const Forearms()),
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
