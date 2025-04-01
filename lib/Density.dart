import 'package:bmindex/InclineBenchPress.dart';
import 'package:flutter/material.dart';
import 'Bench Press.dart';
import 'Tricep Dip.dart';
import 'Lying Dumbbell Extension row.dart';
import 'One Arm Standing Dumbbell row.dart';

class Density extends StatelessWidget {
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
      backgroundColor: Colors.white, // Changed to white
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Workout Summary'),
            _buildSectionText('Main Goal: Build'),
            _buildSectionText('Workout Type: Split'),
            _buildSectionText('Training Level: Intermediate'),
            _buildSectionText('Program Duration: 16 weeks'),
            _buildSectionText('Days per Week: 4'),
            _buildSectionText('Time per Workout: 60-75 minutes'),
            _buildSectionText('Equipment Required: Barbell, Bodyweight, Dumbbells, Machines'),
            _buildSectionText('Target Gender: Male & Female'),

            const SizedBox(height: 20),
            _buildSectionTitle('Workout Description'),
            _buildSectionText(
              'This is not a routine for beginners. You must have decent form on your heavy compound lifts before engaging in any form of heavy strength training...',
            ),
            _buildSectionText('The split is as follows: Week 1'),
            _buildSectionText('• Wednesday: Chest Day (Density)'),
            _buildSectionText('• Thursday: Back Day (Strength)'),
            _buildSectionText('• Saturday: Shoulder Day (Density)'),
            _buildSectionText('• Sunday: Leg Day (Strength)'),

            _buildTable(context, 'Wednesday - Chest and Triceps, Density Workout', [
              {'Exercise': 'Barbell Bench Press', 'Sets': '7', 'Reps': '30 Total', 'page': BenchPress()},
              {'Exercise': 'Chest Dips or DB Bench Press\n or Incline Bench Press', 'Sets': '7', 'Reps': '30 Total', 'page': InclineBenchPress()},
              {'Exercise': 'Close Grip Bench Press', 'Sets': '4', 'Reps': '30 Total', 'page': BenchPress()},
            ]),
            _buildTable(context, 'Strength Workout', [
              {'Exercise': 'Barbell Bench Press', 'Sets': '8', 'Reps': '2 to 3', 'page': BenchPress()},
            ]),
            _buildTable(context, '1 to 2 Tricep Exercises of Choice', [
              {'Exercise': 'Alternate Lying Dumbbell Extension', 'Sets': '3', 'Reps': '6 to 10', 'page': LyingDumbbellExtensionrow()},
              {'Exercise': 'Best Triceps Exercise', 'Sets': '3', 'Reps': '6 to 10', 'page': TricepDip()},
              {'Exercise': 'Lying Dumbbell Extension', 'Sets': '3', 'Reps': '6 to 10', 'page': LyingDumbbellExtensionrow()},
              {'Exercise': 'One Arm Standing Dumbbell Extension', 'Sets': '3', 'Reps': '6 to 10', 'page': OneArmStandingDumbbellrow()},
            ]),
            _buildSectionTitle('Friday: Rest Day'),
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
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), // Changed to black
      ),
    );
  }

  Widget _buildSectionText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.black), // Changed to black
      ),
    );
  }

  Widget _buildTable(BuildContext context, String title, List<Map<String, dynamic>> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(title),
        Table(
          border: TableBorder.all(color: Colors.black), // Changed to black
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(1),
          },
          children: [
            TableRow(
              decoration: BoxDecoration(color: Colors.blue), // Changed header background to blue
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
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.underline), // Black text
                ),
              )
            : Text(
                text,
                style: TextStyle(fontSize: 16, fontWeight: isHeader ? FontWeight.bold : FontWeight.normal, color: Colors.black), // Black text
              ),
      ),
    );
  }
}
