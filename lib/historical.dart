import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        backgroundColor: Colors.blue,
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