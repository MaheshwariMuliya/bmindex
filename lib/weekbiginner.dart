import 'package:flutter/material.dart';
import 'Dumbbell Shrug.dart';
import 'Leg Press.dart';
import 'Dumbbell Lateral Raise.dart';
import 'Onearmdumbbellrow.dart';
import 'DumbbellBenchPress.dart';
import 'Seatedcablerow.dart';
import 'PecDec.dart';
import 'Barbell Wrist Curl Over Bench.dart';
import 'BarbellCurl.dart';
import 'LegCurl.dart';
import 'FlatDumbbellPress.dart';
import 'SeatedCalfRaise.dart';
import 'FlatBenchPress.dart';
import 'Bench Press.dart';
import 'BackExtension.dart';
import 'Squat.dart';
import 'LegExtension.dart';

class Weekbiginner extends StatelessWidget {
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
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Workout Summary',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            _buildSectionTitle('Main Goal: Build Muscle'),
            _buildSectionText('Workout Type: Full Body Training'),
            _buildSectionText('Level: Beginner'),
            _buildSectionText('Days per week: 2'),
            _buildSectionText('Equipment required: Barbell, Bodyweight, Cables, Dumbbells, Machines'),
            _buildSectionText('Target Gender: Male & Female'),
            const SizedBox(height: 20),
            _buildSectionTitle('Workout Description'),
            _buildSectionText(
              'Everyone has to start somewhere. If you have never trained with weights before, you need a routine to get your muscles prepared for more serious training.\n\n'
              'It’s essential that you complete a full body routine for 12 weeks before starting a split routine.\n\n'
              'If you’re new to the gym and working out, head over to our forum and get some advice to make sure you’re on the right path and don’t waste your gym time.',
            ),
            const SizedBox(height: 20),
            _buildSectionTitle('Weeks 1-6: Total Body Circuit Workout'),
            _buildSectionText(
              '1. Complete the following on two non-consecutive days per week.\n\n'
              '2. During the first weeks, do each exercise for one set of 15 reps: during the last three weeks, do two sets of 12 reps for body parts indicated (using heavier weight on all sets).\n'
              '1. Divide your body into two parts (upper and lower ),increasing weight training days to three non consecutive days per week (i.e., Monday , Wednesday ,Friday ).\n'
              '2. Alternate between the two exercise Week 1\n\n',
            ),
            _buildTable(context, 'Week 1-3', [
              {'Exercise': 'Back Extension', 'Sets': '1', 'Reps': '15', 'page': BackExtension()},
              {'Exercise': 'Barbell Curl', 'Sets': '1', 'Reps': '15', 'page': Barbellcurl()},
              {'Exercise': 'Barbell Wrist Curl', 'Sets': '1', 'Reps': '15', 'page': BarbellWristCurlOverBench()},
              {'Exercise': 'Barbell Bench Press', 'Sets': '1', 'Reps': '15', 'page': BenchPress()},
              {'Exercise': 'Dumbbell Shrug', 'Sets': '1', 'Reps': '15', 'page': DumbbellShrug()},
              {'Exercise': 'Flat Bench Press', 'Sets': '1', 'Reps': '15', 'page': FlatBenchPress()},
              {'Exercise': 'Leg Press', 'Sets': '1', 'Reps': '15', 'page': LegPress()},
              {'Exercise': 'Lying Leg Curl', 'Sets': '1', 'Reps': '15', 'page': Legcurl()},
              {'Exercise': 'Seated Cable Row', 'Sets': '1', 'Reps': '15', 'page': Seatedcablerow()},
              {'Exercise': 'Standing Calf Raise', 'Sets': '1', 'Reps': '15', 'page': Seatedcalfraise()},
            ]),
            _buildTable(context, 'Week 4-6', [
              {'Exercise': 'Back Extension', 'Sets': '2', 'Reps': '12', 'page': BackExtension()},
              {'Exercise': 'Barbell Curl', 'Sets': '2', 'Reps': '12', 'page': Barbellcurl()},
              {'Exercise': 'Barbell Wrist Curl', 'Sets': '2', 'Reps': '12', 'page': BarbellWristCurlOverBench()},
              {'Exercise': 'Barbell Bench Press', 'Sets': '2', 'Reps': '12', 'page': BenchPress()},
              {'Exercise': 'Dumbbell Shrug', 'Sets': '2', 'Reps': '12', 'page': DumbbellShrug()},
              {'Exercise': 'Flat Bench Press', 'Sets': '2', 'Reps': '12', 'page': FlatBenchPress()},
              {'Exercise': 'Leg Press', 'Sets': '2', 'Reps': '12', 'page': LegPress()},
              {'Exercise': 'Lying Leg Curl', 'Sets': '2', 'Reps': '12', 'page': Legcurl()},
              {'Exercise': 'Seated Cable Row', 'Sets': '2', 'Reps': '12', 'page': Seatedcablerow()},
              {'Exercise': 'Standing Calf Raise', 'Sets': '2', 'Reps': '12', 'page': Seatedcalfraise()},
            ]),
            _buildTable(context, 'Week 7-12:Workout 2:- Upper Body', [
              {'Exercise': 'Flat Dumbbell Press', 'Sets': '2', 'Reps': '10-12', 'page': FlatDumbbellPress()},
              {'Exercise': 'Pec Dec Fly', 'Sets': '2', 'Reps': '10-12', 'page': PecDec()},
              {'Exercise': '1 Arm Dumbbell Row', 'Sets': '2', 'Reps': '10-12', 'page': Onearmdumbbellrow()},
              {'Exercise': 'Seated Cable Row', 'Sets': '2', 'Reps': '10-12', 'page': Seatedcablerow()},
              {'Exercise': 'Dumbbell Press', 'Sets': '2', 'Reps': '10-12', 'page': DumbbellBenchPress()},
              {'Exercise': 'Dumbbell Shrug', 'Sets': '2', 'Reps': '10-15', 'page': DumbbellShrug()},
              {'Exercise': 'Dumbbell Lateral Raise', 'Sets': '2', 'Reps': '10-12', 'page': DumbbellLateralRaise()},
              {'Exercise': 'Barbell Curl', 'Sets': '2', 'Reps': '10-12', 'page': Barbellcurl()},
              {'Exercise': 'Barbell Wrist Curl', 'Sets': '2', 'Reps': '10-12', 'page': BarbellWristCurlOverBench()},
            ]),
            _buildTable(context, 'Workout 2:-Lower Body', [
              {'Exercise': 'Back Extension', 'Sets': '2', 'Reps': '12', 'page': BackExtension()},
              {'Exercise': 'Lying Leg Curl', 'Sets': '2', 'Reps': '12', 'page': Legcurl()},
              {'Exercise': 'Leg Extention', 'Sets': '2', 'Reps': '12', 'page': Legextension()},
              {'Exercise': 'Smith Machine Squat', 'Sets': '2', 'Reps': '12', 'page': Squat()},

            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildSectionText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildTable(BuildContext context, String title, List<Map<String, dynamic>> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Table(
          border: TableBorder.all(color: Colors.white),
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
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            : Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}