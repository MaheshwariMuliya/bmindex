import 'package:flutter/material.dart';
import 'BarbellBenchPress.dart';
import 'Cablechestpress.dart';
import 'ChestDip.dart';
import 'DeclineDumbbellPress.dart';
import 'DeclineBenchPress.dart';
import 'DumbbellBenchPress.dart';
import 'DumbbellPullover.dart';
import 'InclineBenchPress.dart';
import 'InclineDumbbellBenchcompete.dart';
import 'InclineDumbbellfly.dart';
import 'Pushup.dart';
import 'PecDec.dart';

class Chest extends StatelessWidget {
  const Chest({super.key});

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
                  colors: [Color.fromARGB(255, 245, 245, 252), Colors.blue],
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
                    buildSimpleButton(context, Icons.sports_gymnastics, 'Barbell Bench Press', const Barbellbenchpress(),
                      ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_martial_arts, 'Cable Chest Press', const Cablechestpress(),
                       ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.fitness_center, 'Chest Dip', const Chestdip(),
                        ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_handball, 'Decline Dumbbell Press', const DeclineDumbbellPress(),
                        ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_gymnastics, 'Decline Bench Press', const DeclineBenchPress(),
                       ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_handball, 'Dumbbell Bench Press', const DumbbellBenchPress(),
                      ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_handball, 'Dumbbell Pullover', const DumbbellPullover(),
                       ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_gymnastics, 'Incline Bench Press', const InclineBenchPress(),
                       ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_handball, 'Incline Dumbbell Bench', const InclineDumbbellBenchcompete(),
                       ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_handball, 'Incline Dumbbell Fly', const InclineDumbbellfly(),
                        ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_martial_arts, 'Pec Dec', const PecDec(),
                       ),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.self_improvement, 'Push Up', const Pushup(),
                      ),
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
              Icon(icon, size: 28, color: Colors.blue),
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
      ),
    );
  }
}
