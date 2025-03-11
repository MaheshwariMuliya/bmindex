import 'package:flutter/material.dart';
import 'DumbbellLunges.dart';
import 'HackSquat.dart';
import 'LegCurl.dart';
import 'BulgarianSplitSquat.dart';
import 'LegExtension.dart';
import 'SeatedCalfRaise.dart';
import 'RockingStandingCalfRaise.dart';
import 'Squat.dart';
import 'StabilityBallLegCurl.dart';
import 'StiffLegDeadlift.dart';
import 'WideStance45DegreeLegPress.dart';

class Legs extends StatelessWidget {
  const Legs({super.key});

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
                  colors: [Color.fromARGB(255, 246, 246, 250), Colors.blue],
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
                    buildSimpleButton(context, Icons.directions_walk, 'Dumbbell Lunges', const Dumbbelllunges()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.fitness_center, 'Hack Squat', const Hacksquat()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.event_seat, 'Leg Curl', const Legcurl()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.directions_walk, 'Bulgarian Split Squat', const Bulgariansplitsquat()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.accessibility, 'Leg Extension', const Legextension()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.airline_seat_legroom_extra, 'Seated Calf Raise', const Seatedcalfraise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.stairs, 'Rocking Standing\nCalf Raise', const Rockingstandingcalfraise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.directions_run, 'Squat', const Squat()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_gymnastics, 'Stability Ball Leg Curl', const Stabilityballlegcurl()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.trending_up, 'Stiff Leg Deadlift', const Stifflegdeadlift()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_martial_arts, 'Wide Stance 45°\nLeg Press', const Widestance45degreelegpress()),
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
