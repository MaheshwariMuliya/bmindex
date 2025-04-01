import 'package:flutter/material.dart';
import 'Plank.dart';
import 'Floor Cruches.dart';
import 'Side Plank.dart';
import 'Abdominal Air Bike.dart';
import 'Lying Knee Raise.dart';

class HomeBasedAbWorkout extends StatelessWidget {
  const HomeBasedAbWorkout({super.key});

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
                  colors: [Color.fromARGB(255, 240, 240, 243), Colors.white],
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
                      'Home Based Ab Workout',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'This simple home-based abdominal workout can be done at home with absolutely no equipment. It should only take about 20 minutes and can be done once every three days.',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Summary',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Main Goal: Build Muscle\nWorkout Type: Single Muscle Group\nTraining Level: Beginner\nProgram Duration: 6 weeks\nDays Per Week: 3\nTime Per Workout: 20 minutes\nRequired: Bodyweight\nTarget Gender: Male & Female',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 20),
                     const Text(
                      'Workout Description',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'This simple home based ab workout is designed to strengthen your mid section. We\'ve designed this workout so that you do not need any fitness equipment at all!\n\n',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 5),
                                         const Text(
                      'should be done three times per week, with at least one day off between workouts.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                      const Text(
                      'Monday - Wednesday - Friday would be ideal.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'If your abdominal muscles are still sore from the previous workout, wait until the soreness subsides before training them again.',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 5),
                    buildWorkoutTable(context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWorkoutTable(BuildContext context) {
    final List<Map<String, dynamic>> workoutData = [
      {'day': 'Day 1', 'exercise': 'Plank', 'sets': '3', 'reps': '20', 'page': const Plank()},
      {'day': 'Day 1', 'exercise': 'Lying Knee Raise', 'sets': '2', 'reps': '12-15', 'page': const LyingKneeRaise()},
      {'day': 'Day 1', 'exercise': 'Floor Crunches', 'sets': '3', 'reps': 'MT', 'page': FloorCruches()},
      {'day': 'Day 2', 'exercise': 'Side Plank', 'sets': '3', 'reps': 'MT', 'page': const SidePlank()},
      {'day': 'Day 3', 'exercise': 'Lying Knee Raise', 'sets': '2', 'reps': '12-15', 'page': const LyingKneeRaise()},
      {'day': 'Day 3', 'exercise': 'Plank', 'sets': '3', 'reps': 'MT', 'page': const Plank()},
      {'day': 'Day 3', 'exercise': 'Abdominal Air Bike', 'sets': '3', 'reps': '20', 'page': const AbdominalAirBike()},
    ];

    return Table(
      border: TableBorder.all(color: Colors.black, width: 1),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      children: [
        buildTableHeader(),
        ...workoutData.map((exercise) => buildTableRow(context, exercise)).toList(),
      ],
    );
  }

  TableRow buildTableHeader() {
    return const TableRow(
      decoration: BoxDecoration(color: Colors.blue),
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Day', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Exercise', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Sets', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Reps', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        ),
      ],
    );
  }

  TableRow buildTableRow(BuildContext context, Map<String, dynamic> exercise) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            exercise['day'],
            style: const TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
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
              style: const TextStyle(color: Colors.black, decoration: TextDecoration.underline),
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
}
