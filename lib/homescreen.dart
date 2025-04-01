import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'NotificationScreen.dart';
import 'FeedbackListScreen.dart'; 
import 'SuggestionListScreen.dart';
import 'QueryListScreen.dart';

class HomeScreen extends StatefulWidget {
  final Map<String, dynamic> userData;

  const HomeScreen({super.key, required this.userData});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String trainerId = "";
  Map<String, dynamic> trainerData = {};

  @override
  void initState() {
    super.initState();
    fetchTrainerData();
  }

  Future<void> fetchTrainerData() async {
    try {
      String trainerName = widget.userData['name'] ?? '';

      if (trainerName.isNotEmpty) {
        QuerySnapshot querySnapshot = await FirebaseFirestore.instance
            .collection('trainers')
            .where('name', isEqualTo: trainerName)
            .limit(1)
            .get();

        if (querySnapshot.docs.isNotEmpty) {
          DocumentSnapshot doc = querySnapshot.docs.first;
          setState(() {
            trainerId = doc.id;
            trainerData = doc.data() as Map<String, dynamic>;
          });
        }
      }
    } catch (e) {
      print("Error fetching trainer data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40, color: Colors.blue),
            ),
            const SizedBox(height: 10),
            Text(
              widget.userData['name'] ?? "Trainer",
              style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      ListTile(
        leading: const Icon(Icons.question_answer, color: Colors.blue),
        title: const Text("View Queries"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QueryListScreen()),
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.lightbulb, color: Colors.blueAccent),
        title: const Text("View Suggestions"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SuggestionListScreen()),
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.feedback, color: Colors.blueAccent),
        title: const Text("Check Feedback"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FeedbackListScreen()),
          );
        },
      ),
      const Divider(), // 🔹 Adds a separator
      ListTile(
        leading: const Icon(Icons.logout, color: Colors.red),
        title: const Text("Logout"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ],
  ),
),

      appBar: AppBar(
        title: const Text(
          'Profile Details',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.2),
        ),
        centerTitle: true,
        elevation: 8,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              if (trainerId.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen(trainerId: trainerId)),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Trainer not found!"), backgroundColor: Colors.red),
                );
              }
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileHeader(),
            const SizedBox(height: 10),
            _buildDetailsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.blueAccent, Colors.blueAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          _buildProfileImage(),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.userData['name'] ?? 'User',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 4),
              Text(
                widget.userData['email'] ?? 'No Email',
                style: const TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    String imageUrl = widget.userData['profilePic'] ?? '';

    return CircleAvatar(
      radius: 45,
      backgroundColor: Colors.grey[300],
      backgroundImage: _getImageProvider(imageUrl),
    );
  }

  ImageProvider _getImageProvider(String? imageUrl) {
    if (imageUrl != null && imageUrl.isNotEmpty) {
      try {
        final Uri uri = Uri.parse(imageUrl);
        if (uri.isAbsolute) {
          return NetworkImage(imageUrl);
        }
      } catch (e) {
        print("Error parsing image URL: $e");
      }
    }
    return const AssetImage('assets/images/img168.png');
  }

  Widget _buildDetailsList() {
    final details = [
      {'label': "📞 Phone", 'value': widget.userData['phone'], 'icon': Icons.phone},
      {'label': "📍 Location", 'value': widget.userData['location'], 'icon': Icons.location_on},
      {'label': "🏠 Address", 'value': widget.userData['address'], 'icon': Icons.home},
      {'label': "💪 Trainer Type", 'value': widget.userData['trainerType'], 'icon': Icons.fitness_center},
      {'label': "⭐ Expertise", 'value': widget.userData['expertise'], 'icon': Icons.star},
      {'label': "💳 Payment", 'value': widget.userData['paymentDetails'], 'icon': Icons.payment},
      {'label': "📝 Job Description", 'value': widget.userData['jobDescription'], 'icon': Icons.description},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: details.map((detail) => _buildDetailCard(detail)).toList(),
      ),
    );
  }

  Widget _buildDetailCard(Map<String, dynamic> detail) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Icon(detail['icon'], color: Colors.blueAccent, size: 28),
        title: Text(detail['label'], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
        subtitle: Text(detail['value'] ?? 'Not Available', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black87)),
      ),
    );
  }
}
