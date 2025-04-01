import 'package:flutter/material.dart';
import 'foods.dart';
import 'Supplements.dart';
import 'vitamins.dart';
import 'Muscle.dart';

class Nutrition extends StatelessWidget {
  const Nutrition({super.key});

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
        shadowColor: Colors.white.withOpacity(0.5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildCard(
                  context,
                  'Best Lean-Muscle Building Foods',
                  'Learn about foods that help build lean muscle.',
                  Icons.fastfood,
                  const Foods(),
                ),
                const SizedBox(height: 20),
                buildCard(
                  context,
                  'Supplements for Fitness',
                  'Essential supplements for your fitness journey.',
                  Icons.medical_services,
                  const Supplements(),
                ),
                const SizedBox(height: 20),
                buildCard(
                  context,
                  'Most Important Vitamins',
                  'Discover the essential vitamins for health.',
                  Icons.local_hospital,
                  const Vitamins(),
                ),
                const SizedBox(height: 20),
                buildCard(
                  context,
                  'Quick Tips For Building Muscle',
                  'Check out tips for muscle growth and strength.',
                  Icons.fitness_center,
                  const Muscle(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(
      BuildContext context, String title, String subtitle, IconData icon, Widget destination) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        leading: Icon(icon, size: 36, color:  Colors.blue),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:  Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
