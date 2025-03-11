import 'package:flutter/material.dart';
import 'Strength.dart';
import 'Beginner.dart';
import 'ExerciseGuide.dart';
import 'Workout.dart';
import 'Information.dart';

class Gym extends StatelessWidget {
  const Gym({super.key});

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
        shadowColor: const Color.fromARGB(255, 87, 112, 124).withOpacity(0.5),
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
              color: Colors.white, 
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildSimpleButton(context, Icons.fitness_center, 'Increase Strength', const Strength()),
                  const SizedBox(height: 20),
                  buildSimpleButton(context, Icons.self_improvement, 'Beginner', const Beginner()),
                  const SizedBox(height: 20),
                  buildSimpleButton(context, Icons.book, 'Exercise Guide', const ExerciseGuide()),
                  const SizedBox(height: 20),
                  buildSimpleButton(context, Icons.fitness_center, 'Workout', const Workout()),
                  const SizedBox(height: 20),
                  buildSimpleButton(context, Icons.info, 'Information', const Information()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSimpleButton(
    BuildContext context, 
    IconData icon, 
    String label, 
    Widget destination,
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
          color: Colors.white, 
          borderRadius: BorderRadius.circular(20), 
          border: Border.all(
            color: const Color.fromARGB(255, 87, 112, 124), 
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 87, 112, 124).withOpacity(0.5),
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
            Icon(icon, size: 28, color: Colors.blue), 
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
    );
  }
}
