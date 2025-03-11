import 'package:bmindex/Bench%20Dips.dart';
import 'package:bmindex/InclineBenchPress.dart';
import 'package:flutter/material.dart';
import 'Seated Dumbbell Press.dart';
import 'Seatedcablerow.dart';
import 'Pull Up.dart';
import 'Barbell Row.dart';
import 'StiffLegDeadlift.dart';
import 'Military Press.dart';
import 'Dumbbell Shrug.dart';
import 'BackExtension.dart';
import 'Squat.dart';
import 'Bench Press.dart';
import 'Lying Leg Raise With Hip Thrust.dart';
import 'DumbbellLunges.dart';
import 'Chin Ups.dart';

class Compoundexercises extends StatelessWidget {
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Workout Summary'),
            _buildSectionText('Main Goal: Build Muscle'),
            _buildSectionText('Workout Type: Split'),
            _buildSectionText('Program Duration: 6 weeks'),
            _buildSectionText('Days per Week: 4'),
            _buildSectionText('Time per Workout: 30-45 minutes'),
            _buildSectionText('Equipment Required: Barbell, Bodyweight, Cables, Dumbbells'),
            _buildSectionText('Target Gender: Male & Female'),
            _buildSectionText('Author: M&S Writers'),

            const SizedBox(height: 20),
            _buildSectionTitle('Workout Description'),
            _buildSectionText(
              'Add variety into your workout routine by using compound movements only. '
              'These exercises engage multiple muscle groups and are excellent for muscle building.',
            ),
          _buildTable(context, 'Monday - Chest and Triceps', [
              {'Exercise': 'Barbell Bench Press', 'Sets': '4', 'Reps': '12', 'page': BenchPress()},
              {'Exercise': 'Incline Dumbbell Bench Press', 'Sets': '4', 'Reps': '10', 'page': InclineBenchPress()},
              {'Exercise': 'Close Grip Bench Press', 'Sets': '4', 'Reps': '8', 'page': BenchPress()},
              {'Exercise': 'Dips', 'Sets': '4', 'Reps': 'MAX', 'page': BenchDips()},
            ]),

            _buildTable(context, 'Tuesday - Legs and Abs', [
              {'Exercise': 'Squats', 'Sets': '4', 'Reps': '12,10,8,6', 'page': Squat()},
              {'Exercise': 'Dumbbell Lunges', 'Sets': '4', 'Reps': '12,10,8,6', 'page': Dumbbelllunges()},
              {'Exercise': 'Stiff Leg Deadlift', 'Sets': '4', 'Reps': '8 each leg', 'page': Stifflegdeadlift()},
              {'Exercise': 'Lying Floor Leg Raise With Crunch', 'Sets': '5', 'Reps': '20', 'page': LyingLegRaiseWithHipThrust()},
            ]),
               const SizedBox(height: 20),
                    const Text(
                      ' Notes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                const Text(
                      ' Increase weight on each set of squats and deadlifts Crunch: Lay on the floor, holding a small weight above your head. Bring your legs and arms up until they almost touch.Slowly lower down to 1 inch of the floor',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
            const SizedBox(height: 10),    
                      Text(
                      ' Wednesday: Rest Day',textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
            _buildTable(context, 'Thursday - Back and Biceps', [
              {'Exercise': 'Wide Grip Pull Up', 'Sets': '4', 'Reps': '12', 'page': PullUp()},
              {'Exercise': 'Chin Ups', 'Sets': '4', 'Reps': '10', 'page': ChinUps()},
              {'Exercise': 'Bent Over Barbell Rows', 'Sets': '4', 'Reps': '12', 'page': BarbellRow()},
              {'Exercise': 'Cable Row', 'Sets': '4', 'Reps': '10', 'page': Seatedcablerow()},
            ]),
                const SizedBox(height: 20),
                    const Text(
                      ' Notes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                const Text(
                      'If you can\'t complete all the reps for pullups, complete the set with negatives (jump up and lower yourself down slowly). If you can not do pullups, use lat pull down.All these exercises work the biceps and back.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
            const SizedBox(height: 10),  

            _buildTable(context, 'Friday - Shoulders, Traps and Abs', [
              {'Exercise': 'Military Press', 'Sets': '4', 'Reps': '12,10,8,6', 'page': Militarypress()},
              {'Exercise': 'Alternate Arm Seated Dumbbell Press', 'Sets': '4', 'Reps': '10', 'page': SeatedDumbbellPress()},
              {'Exercise': 'Shrugs', 'Sets': '4', 'Reps': '8', 'page': DumbbellShrug()},
              {'Exercise': 'Abdominal Air Bike', 'Sets': '5', 'Reps': '20', 'page': BackExtension()},
            ]),

            
            _buildTable(context, 'Abs', [
              {'Exercise': 'Abdominal Air Bike', 'Sets': '5', 'Reps': '20', 'page': BackExtension()},
            ]),

            _buildSectionTitle('Saturday and Sunday: Rest Days'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Widget _buildSectionText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }

  Widget _buildTable(BuildContext context, String title, List<Map<String, dynamic>> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(title),
        Table(
          border: TableBorder.all(color: Colors.black),
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(1),
          },
          children: [
            TableRow(
              decoration: BoxDecoration(color: Color(0xFF1A1A2E)),
              children: [
                _buildTableCell('Exercise', isHeader: true),
                _buildTableCell('Sets', isHeader: true),
                _buildTableCell('Reps', isHeader: true),
              ],
            ),
            ...data.map((exercise) {
              return TableRow(
                children: [
                  _buildTableCell(exercise['Exercise'], isLink: true, onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => exercise['page']),
                    );
                  }),
                  _buildTableCell(exercise['Sets']),
                  _buildTableCell(exercise['Reps']),
                ],
              );
            }).toList(),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildTableCell(String text, {bool isHeader = false, bool isLink = false, VoidCallback? onTap}) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: isLink
            ? GestureDetector(
                onTap: onTap,
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.underline),
                ),
              )
            : Text(
                text,
                style: TextStyle(fontSize: 16, fontWeight: isHeader ? FontWeight.bold : FontWeight.normal, color: Colors.black),
              ),
      ),
    );
  }
}
