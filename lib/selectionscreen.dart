import 'package:flutter/material.dart';
import 'diet.dart';
import 'gym.dart';
import 'nutrition.dart';
import 'yoga.dart';
import 'home_screen.dart';
import 'bmrcalculate.dart';

class SelectionScreen extends StatelessWidget {
  final String? trainerId;
  final String? trainerName;

  const SelectionScreen({super.key, this.trainerId, this.trainerName});

  @override
  Widget build(BuildContext context) {
    final double imageHeight = 300;
    final double imageWidth = MediaQuery.of(context).size.width;

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
        shadowColor: Colors.grey.withOpacity(0.5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          /// 🌟 Background Image with Fixed Width & Height
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: 250, 
              height: 300,  
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'),
                  fit: BoxFit.cover, // Adjusts image properly
                ),
              ),
            ),
          ),
          
          /// 🌟 Main Content
          SingleChildScrollView(
            padding: EdgeInsets.only(top: imageHeight),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  buildRow(context, [
                    buildNavigationItem(
                      context,
                      icon: Icons.fitness_center,
                      label: 'GYM',
                      destination: const Gym(),
                      color: Colors.green.shade800,
                    ),
                    buildNavigationItem(
                      context,
                      icon: Icons.self_improvement,
                      label: 'YOGA',
                      destination: const Yoga(),
                      color: Colors.blue.shade700,
                    ),
                  ]),
                  const SizedBox(height: 20),
                  buildRow(context, [
                    buildNavigationItem(
                      context,
                      icon: Icons.restaurant,
                      label: 'DIET',
                      destination: const Diet(),
                      color: Colors.orange.shade700,
                    ),
                    buildNavigationItem(
                      context,
                      icon: Icons.nature,
                      label: 'NUTRITION',
                      destination: const Nutrition(),
                      color: const Color.fromARGB(255, 8, 37, 34),
                    ),
                  ]),
                  const SizedBox(height: 20),
                  buildRow(context, [
                    buildNavigationItem(
                      context,
                      icon: Icons.calculate,
                      label: 'BMI',
                      destination: const HomeScreen(),
                      color: Colors.purple.shade700,
                    ),
                    buildNavigationItem(
                      context,
                      icon: Icons.calculate,
                      label: 'BMR',
                      destination: BMRCalculatorScreen(),
                      color: Colors.red.shade700,
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRow(BuildContext context, List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children.map((widget) => Expanded(child: widget)).toList(),
    );
  }

  Widget buildNavigationItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Widget destination,
    required Color color,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        width: 150, // Set fixed width
        height: 150, // Set fixed height
        decoration: BoxDecoration(
          color: color.withOpacity(0.9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
