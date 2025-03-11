import 'package:bmindex/WeightLoss.dart';
import 'package:bmindex/drinkdiet.dart';
import 'package:bmindex/tummyfate.dart';
import 'package:bmindex/vegdiet.dart';
import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  const Diet({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: [
              buildSupplementButton(context, 'Drink Diet', Drinkdiet(), Icons.local_drink),
              buildSupplementButton(context, 'Weight Loss', const Weightloss(), Icons.fitness_center),
              buildSupplementButton(context, 'Tummy Fat Diet', const TummyFatEdit(), Icons.local_dining),
              buildSupplementButton(context, 'Veg Diet', const Vegdiet(), Icons.grass),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSupplementButton(BuildContext context, String label, Widget destination, IconData icon) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
              colors: [Colors.blue, Color.fromARGB(255, 191, 194, 197)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 50, color: Colors.white),
              const SizedBox(height: 16),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
