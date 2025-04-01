import 'package:flutter/material.dart';
import 'Bench Press.dart';
import 'Barbell Row.dart';
import 'Military Press.dart';
import 'SeatedCalfRaise.dart';
import 'StiffLegDeadlift.dart';
import 'Stage2Exercise1.dart';
import 'Stage2Exercise2.dart';
import 'Stage2Exercise3.dart';
import 'Stage3Exercise1.dart';
import 'Stage3Exercise2.dart';
import 'Stage3Exercise3.dart';

class Gainmass extends StatelessWidget {
  Gainmass({super.key});

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
      backgroundColor: Colors.white, 
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Workout Description',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'The problem: you\'re just starting and don\'t want to waste time in the gym...'
                'This workout program features 3 specific stages:\n\n'
                'Stage 1 - Neuromuscular Adaptation Stage: Weight is moderate...\n\n'
                'Stage 2 - Conditioning and Building Stage: Another 4-week stage...\n\n'
                'Stage 3 - Maximizing Beginner Gains Stage: This is a 12-week stage...',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'Stage 1 - Neuromuscular Adaptation Stage',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              buildWorkoutTable(context, _stage1Workout),
              const SizedBox(height: 20),

              const Text(
                'Stage 2 - Conditioning and Building Stage',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              buildWorkoutTable(context, _stage2Workout),
              const SizedBox(height: 20),

              const Text(
                'Stage 3 - Maximizing Beginner Gains Stage',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              buildWorkoutTable(context, _stage3Workout),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildWorkoutTable(BuildContext context, List<Map<String, dynamic>> workoutData) {
    return Table(
      border: TableBorder.all(color: Colors.black), // Black border
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
      },
      children: [
        buildTableHeader(),
        ...workoutData.map((exercise) => buildTableRow(context, exercise)).toList(),
      ],
    );
  }

  TableRow buildTableHeader() {
    return const TableRow(
      decoration: BoxDecoration(color: Colors.blue), // Blue header
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Exercise',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Sets',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Reps',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  TableRow buildTableRow(BuildContext context, Map<String, dynamic> exercise) {
    return TableRow(
      decoration: const BoxDecoration(color: Colors.white),
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => exercise['page']),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              exercise['exercise'],
              style: const TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            exercise['sets'],
            style: const TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            exercise['reps'],
            style: const TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  final List<Map<String, dynamic>> _stage1Workout = [
    {'exercise': 'Barbell Row', 'sets': '2', 'reps': '10', 'page': BarbellRow()},
    {'exercise': 'Bench Press', 'sets': '2', 'reps': '10', 'page': BenchPress()},
    {'exercise': 'Military Press', 'sets': '2', 'reps': '10', 'page': Militarypress()},
    {'exercise': 'Seated Calf Raise', 'sets': '2', 'reps': '10', 'page': Seatedcalfraise()},
    {'exercise': 'Stiff Leg Deadlift', 'sets': '2', 'reps': '10', 'page': Stifflegdeadlift()},
  ];

  final List<Map<String, dynamic>> _stage2Workout =  [
    {'exercise': 'Stage 2 Exercise 1', 'sets': '3', 'reps': '12', 'page': Stage2Exercise1()},
    {'exercise': 'Stage 2 Exercise 2', 'sets': '3', 'reps': '12', 'page': Stage2Exercise2()},
    {'exercise': 'Stage 2 Exercise 3', 'sets': '3', 'reps': '12', 'page': Stage2Exercise3()},
  ];

  final List<Map<String, dynamic>> _stage3Workout = [
    {'exercise': 'Stage 3 Exercise 1', 'sets': '4', 'reps': '10', 'page': Stage3Exercise1()},
    {'exercise': 'Stage 3 Exercise 2', 'sets': '4', 'reps': '10', 'page': Stage3Exercise2()},
    {'exercise': 'Stage 3 Exercise 3', 'sets': '4', 'reps': '10', 'page': Stage3Exercise3()},
  ];
}
