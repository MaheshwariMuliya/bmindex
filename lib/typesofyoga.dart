import 'package:bmindex/Backbends.dart';
import 'package:bmindex/Balancing.dart';
import 'package:bmindex/Resting.dart';
import 'package:bmindex/Seated.dart';
import 'package:bmindex/Standing.dart';
import 'package:flutter/material.dart';

class Typesofyoga extends StatelessWidget {
  const Typesofyoga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extends gradient under AppBar
      backgroundColor: Colors.transparent, // Allows gradient to show
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
      body: Stack(
        children: [
          // Background Gradient
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 245, 245, 248),Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildSimpleButton(
                    context,
                    'Standing Yoga Poses',
                    const Standing(),
                    Icons.self_improvement,
                  ),
                  const SizedBox(height: 20),
                  buildSimpleButton(
                    context,
                    'Balancing Yoga Poses',
                    const Balancing(),
                    Icons.accessibility_new,
                  ),
                  const SizedBox(height: 20),
                  buildSimpleButton(
                    context,
                    'Backbends',
                    const Backbends(),
                    Icons.back_hand,
                  ),
                  const SizedBox(height: 20),
                  buildSimpleButton(
                    context,
                    'Seated Yoga Poses',
                    const Seated(),
                    Icons.chair,
                  ),
                  const SizedBox(height: 20),
                  buildSimpleButton(
                    context,
                    'Resting or Supine Yoga\n Poses',
                    const Resting(),
                    Icons.bed,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSimpleButton(BuildContext context, String label, Widget destination, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade400, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 28, color: const Color(0xFF1E1E2C)),
              const SizedBox(width: 10),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E1E2C),
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
