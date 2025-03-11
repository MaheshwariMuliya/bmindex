import 'package:flutter/material.dart';

class Balancing extends StatelessWidget {
  const Balancing({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> poses = [
      {
        "name": "Tree Pose",
        "image": "assets/images/img54.jpg",
        "description": "Improves balance, strengthens legs, and enhances focus."
      },
      {
        "name": "Warrior III",
        "image": "assets/images/img55.jpg",
        "description": "Boosts coordination, strengthens legs and core, and improves posture."
      },
      {
        "name": "Half Moon Pose",
        "image": "assets/images/img56.jpg",
        "description": "Enhances leg and ankle strength while improving balance and stability."
      },
      {
        "name": "Crow Pose",
        "image": "assets/images/img57.jpg",
        "description": "Builds arm strength, improves wrist flexibility, and enhances focus."
      },
      {
        "name": "Eagle Pose",
        "image": "assets/images/img58.jpg",
        "description": "Strengthens ankles, improves concentration, and releases tension in shoulders."
      },
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor:Colors.blue,
      appBar: AppBar(
        title: const Text(
          'Balancing Yoga Poses',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.blue,
        shadowColor: Colors.black.withOpacity(0.5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 237, 237, 243), Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView.builder(
              itemCount: poses.length,
              itemBuilder: (context, index) {
                return _buildGlassCard(
                  context,
                  poses[index]["name"]!,
                  poses[index]["image"]!,
                  poses[index]["description"]!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGlassCard(BuildContext context, String poseName, String imagePath, String description) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white, // 🔹 White Background
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          poseName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black, 
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black, 
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black),
        onTap: () {
          _showPoseDetails(context, poseName, imagePath, description);
        },
      ),
    ),
  );
}


  void _showPoseDetails(BuildContext context, String name, String image, String description) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor:  Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: Text(
            name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(image, height: 150, fit: BoxFit.cover),
              const SizedBox(height: 15),
              Text(
                description,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("Close", style: TextStyle(color: Colors.black)),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }
}
