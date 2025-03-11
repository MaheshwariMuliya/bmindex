import 'package:flutter/material.dart';
import 'CompoundExercises.dart';
import 'Density.dart';

class Strength extends StatelessWidget {
  const Strength ({super.key});

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
                  colors: [Color.fromARGB(255, 245, 245, 248), Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildSimpleButton(context, Icons.fitness_center, 'Compound Exercises\n only workout',  Compoundexercises(),  Colors.grey.shade200
                    ),
                  const SizedBox(height: 20),
                  buildSimpleButton(context, Icons.self_improvement, 'Density and strength\n 4 day split',  Density(),  Colors.grey.shade200
                    ),
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
    Color color,
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
          color: color,
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
