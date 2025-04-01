import 'package:flutter/material.dart';

class LyingKneeRaise extends StatelessWidget {
  const LyingKneeRaise({super.key});

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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 242, 242, 247),
              Colors.blue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/img63.jpg',
                    height: 200,
                  ),
                ),
                const SizedBox(height: 16),
                _buildSectionTitle('Exercise Profile'),
                _buildInfoRow('Main Muscle Group:', 'Abs'),
                _buildInfoRow('Exercise Type:', 'Strength'),
                _buildInfoRow('Equipment Required:', 'Bodyweight'),
                _buildInfoRow('Mechanics:', 'Isolation'),
                _buildInfoRow('Force Type:', 'Pull (Bilateral)'),
                _buildInfoRow('Experience Level:', 'Beginner'),
                _buildInfoRow('Secondary Muscles:', 'None'),
                const SizedBox(height: 16),
                _buildSectionTitle('Instructions'),
                _buildInstructionStep('1. Lay supine with legs bent and hands under your lower back for support.'),
                _buildInstructionStep('2. Keep knees bent and raise them while contracting abs and exhaling.'),
                _buildInstructionStep('3. Once above parallel, slowly lower legs back to start position.'),
                _buildInstructionStep('4. Complete for assigned repetitions.'),
                const SizedBox(height: 16),
                _buildSectionTitle('Tips'),
                _buildTip('Exhale hard like blowing out candles to improve mind-muscle connection.'),
                _buildTip('If lower back pain occurs, opt for anti-extension and anti-rotation movements.'),
                _buildTip('Avoid placing hands behind the head to prevent neck strain.'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            value,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget _buildInstructionStep(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(
        '- $text',
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildTip(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(
        '• $text',
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
