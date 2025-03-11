import 'package:flutter/material.dart';
import 'package:pretty_gauge/pretty_gauge.dart';

class ResultScreen extends StatelessWidget {
  final double bmr;

  ResultScreen({required this.bmr});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                   const Text(
                  "Your BMR Result",
                  style: TextStyle(fontSize: 30, color: Color(0xFF1A1A2E)),
                ),
                SizedBox(height: 20),
            PrettyGauge(
              gaugeSize: 300,
              minValue: 0,
              maxValue: 4000,
              segments: [
                GaugeSegment('Low', 1000, Colors.red),
                GaugeSegment('Normal', 2000, Colors.green),
                GaugeSegment('High', 1000, Colors.orange),
              ],
              currentValue: bmr,
              needleColor: Color(0xFF1A1A2E),
              showMarkers: true,
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF1A1A2E),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Your BMR: ${bmr.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.arrow_downward, color: Colors.red),
                          Text(
                            'Low',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 40),
                      Column(
                        children: [
                          Icon(Icons.check, color: Colors.green),
                          Text(
                            'Normal',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 40),
                      Column(
                        children: [
                          Icon(Icons.arrow_upward, color: Colors.orange),
                          Text(
                            'High',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
