import 'package:flutter/material.dart';
import 'Abdominal Air Bike.dart';
import 'Chair Leg Raise.dart';
import 'Chair Knee Raise.dart';
import 'Exercise Ball Leg Tuck.dart';
import 'Floor Crunch .dart';
import 'Hanging Leg Raise.dart';
import 'Hip Thrusts.dart';
import 'Lying Leg Raise With Hip Thrust.dart';
import 'Plank.dart';
import 'Side Crunch With Leg Lift.dart';
import 'Side Plank.dart';
import 'Twisting floor crunch.dart';
import 'Lying Floor Leg Raise.dart';
import 'Seated Leg Tuck.dart';
import 'TwistingBenchCrunch.dart';

class Abs extends StatelessWidget {
  const Abs({super.key});

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
                  colors: [Colors.blue, Color.fromARGB(255, 241, 241, 248)],
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
                    buildSimpleButton(context, Icons.directions_bike, 'Abdominal Air Bike', const AbdominalAirBike()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.event_seat, 'Chair Leg Raise', const ChairLegRaise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.airline_seat_legroom_extra, 'Chair Knee Raise', const ChairKneeRaise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.sports_volleyball, 'Exercise Ball Leg Tuck', const ExerciseBallLegTuck()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.self_improvement, 'Floor Crunch\n (Legs on bench)', const FloorCrunch()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.arrow_upward, 'Hanging Leg Raise', const HangingLegRaise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.fitness_center, 'Hip Thrusts', const HipThrusts()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.bed, 'Lying Floor Leg Raise', const LyingFloorLegRaise()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.airline_seat_recline_extra, 'Lying Leg Raise With\n Hip Thrust', const LyingLegRaiseWithHipThrust()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.horizontal_rule, 'Plank', const Plank()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.event_seat, 'Seated Leg Tuck', const SeatedLegTuck()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.rotate_right, 'Side Crunch With Leg Lift', const SideCrunchWithLegLift()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.view_column, 'Side Plank', const SidePlank()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.fitness_center, 'Twisting Bench Crunch', const TwistingBenchCrunch()),
                    const SizedBox(height: 20),
                    buildSimpleButton(context, Icons.compare_arrows, 'Twisting Floor Crunch', const Twistingfloorcrunch()),
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
                textAlign: TextAlign.center,
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
