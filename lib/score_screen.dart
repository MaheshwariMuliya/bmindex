import 'package:flutter/material.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ScoreScreen extends StatelessWidget {
  final double bmiScore;
  final int age;
  String? bmiStatus;
  String? bmiInterpretation;
  Color? bmiStatusColor;

  ScoreScreen({super.key, required this.bmiScore, required this.age}) {
    setBmiInterpretation();
  }

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Card(
          elevation: 12,
          shape: const RoundedRectangleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  "Your Score",
                  style: TextStyle(fontSize: 30, color: Color(0xFF1A1A2E)),
                ),
                const SizedBox(height: 20),
                PrettyGauge(
                  gaugeSize: 300,
                  minValue: 0,
                  maxValue: 40,
                  segments: [
                    GaugeSegment('Underweight', 18.5, Colors.blue),
                    GaugeSegment('Normal', 6.4, Colors.green),
                    GaugeSegment('Overweight', 5, Colors.orange),
                    GaugeSegment('Obese', 10.1, Colors.red),
                  ],
                  valueWidget: Text(
                    bmiScore.toStringAsFixed(1),
                    style: const TextStyle(fontSize: 40),
                  ),
                  currentValue: bmiScore,
                  needleColor:Color(0xFF1A1A2E),
                ),
                const SizedBox(height: 10),
                Text(
                  bmiStatus!,
                  style: TextStyle(fontSize: 20, color: bmiStatusColor!),
                ),
                const SizedBox(height: 10),
                Text(
                  bmiInterpretation!,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Re-Calculate"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        Share.share(
                            "Your BMI is ${bmiScore.toStringAsFixed(2)}, at age $age");
                      },
                      child: const Text("Share"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HistoricalDataScreen()
                      ),
                    );
                  },
                  child: const Text("View BMI History"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setBmiInterpretation() {
    if (bmiScore > 30) {
      bmiStatus = "Obese";
      bmiInterpretation = "Please work to reduce obesity";
      bmiStatusColor = Colors.pink;
    } else if (bmiScore >= 25) {
      bmiStatus = "Overweight";
      bmiInterpretation = "Do regular exercise & reduce the weight";
      bmiStatusColor = Colors.orange;
    } else if (bmiScore >= 18.5) {
      bmiStatus = "Normal";
      bmiInterpretation = "Enjoy, You are fit";
      bmiStatusColor = Colors.green;
    } else {
      bmiStatus = "Underweight";
      bmiInterpretation = "Try to increase the weight";
      bmiStatusColor = Colors.red;
    }
  }
}
class HistoricalDataScreen extends StatefulWidget {
  @override
  _HistoricalDataScreenState createState() => _HistoricalDataScreenState();
}

class _HistoricalDataScreenState extends State<HistoricalDataScreen> {
  List<String> bmiHistory = [];

  @override
  void initState() {
    super.initState();
    _loadBMIHistory();
  }

  Future<void> _loadBMIHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      bmiHistory = prefs.getStringList('bmiHistory') ?? [];
    });
  }

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
        backgroundColor: Color(0xFF1E1E2C),
        shadowColor: const Color.fromARGB(255, 206, 203, 203).withOpacity(0.5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: bmiHistory.isEmpty
          ? const Center(
        child: Text('No BMI history available.'),
      )
          : ListView.builder(
        itemCount: bmiHistory.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(bmiHistory[index]),
            ),
          );
        },
      ),
    );
  }
}

