import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Map<String, dynamic> userData;

  const HomeScreen({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Profile Details',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
        elevation: 8,
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.white.withOpacity(0.3),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 20), // Left margin
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: const CircleAvatar(
            radius: 40, 
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/img168.png'),
          ),
        ),
        const SizedBox(width: 15), 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              userData['name'] ?? 'User',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.1,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                userData['email'] ?? 'No Email',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}


  Widget _buildDetailsList() {
    final details = [
      {'label': "📞 Phone", 'value': userData['phone'], 'icon': Icons.phone},
      {'label': "📍 Location", 'value': userData['location'], 'icon': Icons.location_on},
      {'label': "🏠 Address", 'value': userData['address'], 'icon': Icons.home},
      {'label': "💪 Trainer Type", 'value': userData['trainerType'], 'icon': Icons.fitness_center},
      {'label': "⭐ Expertise", 'value': userData['expertise'], 'icon': Icons.star},
      {'label': "💳 Payment", 'value': userData['paymentDetails'], 'icon': Icons.payment},
      {'label': "📝 Job Description", 'value': userData['jobDescription'], 'icon': Icons.description},
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
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(detail['icon'], color: Colors.blueAccent, size: 28),
        ),
        title: Text(
          detail['label'],
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        subtitle: Text(
          detail['value'] ?? 'Not Available',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black87),
        ),
      ),
    );
  }
}
