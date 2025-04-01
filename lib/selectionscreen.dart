import 'package:flutter/material.dart';
import 'diet.dart';
import 'gym.dart';
import 'nutrition.dart';
import 'yoga.dart';
import 'home_screen.dart';
import 'bmrcalculate.dart';
import 'feedback_screen.dart';
import 'query_screen.dart';
import 'suggestion_screen.dart';
import 'QueryRepliesScreen.dart';

class SelectionScreen extends StatelessWidget {
  final String? trainerId;
  final String? trainerName;
  final Map<String, dynamic>? userDetails;

  const SelectionScreen({super.key, this.trainerId, this.trainerName, this.userDetails});

  @override
  Widget build(BuildContext context) {
    final double imageHeight = 300;

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
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: buildDrawer(context),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: imageHeight,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: imageHeight),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
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
                      color: Colors.teal.shade800,
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

  
  Widget buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue,Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/img168.png'), 
                ),
                const SizedBox(height: 10),
                Text(
                  userDetails?['name'] ?? 'Welcome, User',
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Stay Fit, Stay Healthy!",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                buildDrawerItem(context, Icons.question_answer, "Ask Query", const QueryScreen()),
                buildDrawerItem(context, Icons.question_answer, "Reply Query", const QueryRepliesScreen()),
                buildDrawerItem(context, Icons.lightbulb, "Suggestion", const SuggestionScreen()),
                buildDrawerItem(context, Icons.feedback, "Feedback", const FeedbackScreen()),
              ],
            ),
          ),

          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: const Icon(Icons.exit_to_app, color: Colors.redAccent),
              title: const Text(
                "Log Out",
                style: TextStyle(fontSize: 18, color: Colors.redAccent, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDrawerItem(BuildContext context, IconData icon, String label, Widget destination) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Material(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
          },
          child: ListTile(
            leading: Icon(icon, color: Colors.blue),
            title: Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ),
        ),
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 150,
        height: 150,
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
