import 'package:flutter/material.dart';
import 'sendotpscreen.dart'; 
import 'trainerotpscreen.dart'; 

class Choose extends StatelessWidget {
  final Map<String, dynamic>? userDetails;
  const Choose({super.key, this.userDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FLEX FITNESS",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.white,
            letterSpacing: 2,
            shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 4,
                color: Colors.blue,
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 32, 105, 201) 
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ 
              Color.fromARGB(255, 246, 249, 250), 
              Color.fromARGB(255, 246, 249, 250), 
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/img167.jpg', 
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20), 
              
              buildNavigationItem(
                context,
                imagePath: 'assets/images/img165.png',
                label: 'User Login',
                destination: const LoginPage(),
                gradientColors: [
                  const Color.fromARGB(255, 243, 235, 242), 
                  const Color.fromARGB(255, 32, 105, 201)                ],
                imageWidth: 100, 
                imageHeight: 100,
              ),
              const SizedBox(height: 30),
              buildNavigationItem(
                context,
                imagePath: 'assets/images/img166.png',
                label: 'Trainer\n Login',
                destination: const TrainerRegistrationScreen(),
                gradientColors: [
                  const Color.fromARGB(255, 240, 236, 239), 
                  const Color.fromARGB(255, 32, 105, 201),
                ],
                imageWidth: 155, 
                imageHeight: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavigationItem(
    BuildContext context, {
    required String imagePath,
    required String label,
    required Widget destination,
    required List<Color> gradientColors,
    required double imageWidth,
    required double imageHeight,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.all(20),
        height: 150,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 20),
            Text(
              label,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [ 
                  Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 3,
                    color: Colors.black26,
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
