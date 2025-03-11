import 'package:flutter/material.dart';
import 'protein.dart';
import 'Glucosamine.dart';
import 'glutamine.dart';
import 'creatine.dart';
import 'BCAAS.dart';
import 'soyprotein.dart';

class Supplements extends StatelessWidget {
  const Supplements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' FLEX FITNESS',
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: [
              buildSupplementButton(context, 'assets/images/img18.png', 'Whey Protein', Protein()),
              buildSupplementButton(context, 'assets/images/img19.png', 'Glutamine', const GlutamineApp()),
              buildSupplementButton(context, 'assets/images/img20.png', 'Creatine', const CreatineApp()),
              buildSupplementButton(context, 'assets/images/img21.png', 'Glucosamine', const GlucosamineApp()),
              buildSupplementButton(context, 'assets/images/img22.png', 'BCAAS', BCAAsInfoPage()),
              buildSupplementButton(context, 'assets/images/img23.png', 'Soy Protein', const SoyProteinInfo()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSupplementButton(BuildContext context, String imagePath, String label, Widget destination) {
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
              colors: [Color(0xFF1A1A2E), Color.fromARGB(255, 197, 200, 201)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, height: 80, fit: BoxFit.cover),
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
