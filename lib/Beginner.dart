import 'package:flutter/material.dart';
import 'DayWorkout.dart';
import 'Gainmass.dart';
import 'Weekbiginner.dart';

class Beginner extends StatelessWidget {
  const Beginner ({super.key});

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
                  colors: [Colors.white, Colors.white],
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
                buildSimpleButton(context, Icons.calendar_today, '3 Day Workout',  DayWorkout(), 
               ),
                const SizedBox(height: 20),
                buildSimpleButton(context, Icons.fitness_center, 'How To Gain Mass Fast', Gainmass(), 
                ),
                const SizedBox(height: 20),
                buildSimpleButton(context, Icons.book, '12 Week Beginner',  Weekbiginner(), 
                ),
                ]

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
            color:  Colors.blue, 
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color:  Colors.blue.withOpacity(0.5),
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
                color: Colors.blue, 
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
