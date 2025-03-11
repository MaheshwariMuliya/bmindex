import 'package:flutter/material.dart';

void main() {
  runApp(const GlutamineApp());
}

class GlutamineApp extends StatelessWidget {
  const GlutamineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Glutamine Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GlutamineScreen(),
    );
  }
}

class GlutamineScreen extends StatelessWidget {
  const GlutamineScreen({super.key});

  final List<Map<String, String>> glutamineInfo = const [
    {'title': 'What is Glutamine?', 'description': 'Glutamine is a conditionally essential amino acid crucial for muscle recovery, immune function, and gut health.'},
    {'title': 'Chemical Structure', 'description': 'Glutamine has a molecular formula of C₅H₁₀N₂O₃ and exists as L-Glutamine (biologically active) and D-Glutamine.'},
    {'title': 'Functions', 'description': 'Supports muscle recovery, boosts immunity, maintains gut integrity, regulates nitrogen balance, and enhances brain function.'},
    {'title': 'Glutamine Sources', 'description': 'Found in meats, dairy, fish, beans, spinach, and supplements like L-Glutamine powder.'},
    {'title': 'Supplementation & Dosage', 'description': 'Typically 5-10g per day, taken post-workout or during high-stress periods. Safe for most individuals.'},
    {'title': 'Side Effects', 'description': 'Generally safe but excessive intake (>40g/day) may cause digestive issues and amino acid imbalances.'},
  ];

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
      body: ListView.builder(
        itemCount: glutamineInfo.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: glutamineInfo[index]['title']! + '\n',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                    ),
                    TextSpan(
                      text: glutamineInfo[index]['description']!,
                      style: const TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
