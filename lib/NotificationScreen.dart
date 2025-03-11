import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TrainerNotificationScreen extends StatelessWidget {
  final String trainerId;

  const TrainerNotificationScreen({super.key, required this.trainerId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('trainer_notifications')
            .where('trainerId', isEqualTo: trainerId)
            .orderBy('timestamp', descending: true)
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text(
                "No notifications yet",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            );
          }

          var notifications = snapshot.data!.docs;

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              var notification = notifications[index];
              var message = notification['message'];
              var userName = notification['userName'] ?? 'A user';

              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                elevation: 4,
                child: ListTile(
                  leading: const Icon(Icons.notifications, color: Colors.blue),
                  title: Text(message),
                  subtitle: Text("From: $userName"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}