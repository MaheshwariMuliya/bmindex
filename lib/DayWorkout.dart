import 'package:flutter/material.dart';
import 'DumbbellBenchPress.dart';
import 'InclineBenchPress.dart';
import 'Tricep Dip.dart';
import 'Lying Triceps Extension.dart';
import 'One Arm Standing Dumbbell row.dart';
import 'Seated Row.dart';
import 'Standing Barbell curl.dart';
import 'WideStance45DegreeLegPress.dart';
import 'Dumbbell Lateral Raise.dart';
import 'LegExtension.dart';
import 'Military Press.dart';
import 'Legcurl.dart';

class DayWorkout extends StatelessWidget {
  DayWorkout ({super.key});

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
                  colors: [Color.fromARGB(255, 241, 241, 247),Colors.blue],
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
                    const Text(
                      'Workout Description',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'New to weight training? This workout is for you. Designed to hit each muscle group with the big compound exercises once per week. Each workout day has 3-5 exercises.\n With this workout you focus should be on your technique not the weight you\'re lifting. Get the technique right in this workout then move on to a more advanced workout (Like this 4 day split) after 8-10 weeks.\nThe workout hits your chest/triceps on Monday, back/biceps on Wednesday and legs/shoulders on Friday. Abs and lower back should be worked after each workout with 2 exercises (see ab exercises).\n',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Daily Workout Schedule:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Monday Workout
                    const Text(
                      'Monday: Chest/Triceps',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    buildWorkoutTable(context, _mondayWorkout),
                    const SizedBox(height: 20),

                    // Wednesday Workout
                    const Text(
                      'Wednesday: Back/Biceps',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    buildWorkoutTable(context, _wednesdayWorkout),
                    const SizedBox(height: 20),

                    // Friday Workout
                    const Text(
                      'Friday: Legs/Shoulders',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    buildWorkoutTable(context, _fridayWorkout),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWorkoutTable(BuildContext context, List<Map<String, dynamic>> workoutData) {
    return Table(
      border: TableBorder.all(color: Colors.white, width: 1),
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
      decoration: BoxDecoration(color: Colors.black54),
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Exercise', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Sets', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Reps', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        ),
      ],
    );
  }

  TableRow buildTableRow(BuildContext context, Map<String, dynamic> exercise) {
    return TableRow(
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
              style: const TextStyle(color: Colors.white, decoration: TextDecoration.underline),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            exercise['sets'],
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            exercise['reps'],
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  final List<Map<String, dynamic>> _mondayWorkout = [
    {'exercise': 'Dumbbell Bench Press', 'sets': '4', 'reps': '12,10,10,10', 'page': DumbbellBenchPress()},
    {'exercise': 'Incline Bench Press', 'sets': '2', 'reps': '10', 'page': InclineBenchPress()},
    {'exercise': 'Tricep Dip', 'sets': '3', 'reps': 'Failure', 'page': TricepDip()},
    {'exercise': 'Lying Tricep Extension', 'sets': '3', 'reps': '10', 'page': LyingTricepsExtension()},
  ];

  final List<Map<String, dynamic>> _wednesdayWorkout = [
    {'exercise': 'One Arm Standing Dumbbell Row', 'sets': '4', 'reps': '10', 'page': OneArmStandingDumbbellrow()},
    {'exercise': 'Seated Row', 'sets': '3', 'reps': '12', 'page': SeatedRow()},
    {'exercise': 'Tricep Dip', 'sets': '3', 'reps': '10', 'page': TricepDip()},
    {'exercise': 'Standing Barbell Curl', 'sets': '3', 'reps': '8-10', 'page': Standingbarbellcurl()},
  ];

  final List<Map<String, dynamic>> _fridayWorkout = [
    {'exercise': '45 Degree Leg Press', 'sets': '4', 'reps': '12,10,10,10', 'page': Widestance45degreelegpress()},
    {'exercise': 'Dumbbell Lateral Raise', 'sets': '3', 'reps': '10', 'page': DumbbellLateralRaise()},
    {'exercise': 'Leg Extension', 'sets': '3', 'reps': '12', 'page': Legextension()},
    {'exercise': 'Military Press', 'sets': '4', 'reps': '8-10', 'page': Militarypress()},
    {'exercise': 'Leg Curl', 'sets': '3', 'reps': '12', 'page': Legcurl()},
  ];
}