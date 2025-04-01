import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'FeedbackListScreen.dart';
import 'QueryListScreen.dart';
import 'SuggestionListScreen.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  void deleteUser(String id, String collection) async {
    bool confirmDelete = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Confirm Delete"),
        content: const Text("Are you sure you want to delete this user?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text("Delete", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmDelete) {
      await FirebaseFirestore.instance.collection(collection).doc(id).delete();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("User deleted from $collection")),
      );
    }
  }

  Widget buildUserList(String collection, String title, IconData icon) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: Colors.white),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection(collection).snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
                  if (snapshot.data!.docs.isEmpty) {
                    return const Center(child: Text("No data available", style: TextStyle(fontSize: 16, color: Colors.grey)));
                  }

                  return ListView.separated(
                    itemCount: snapshot.data!.docs.length,
                    separatorBuilder: (context, index) => const Divider(height: 1, color: Colors.grey),
                    itemBuilder: (context, index) {
                      var doc = snapshot.data!.docs[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueAccent.withOpacity(0.1),
                          child: const Icon(Icons.person, color: Colors.blueAccent),
                        ),
                        title: Text(doc['name'] ?? 'No Name', style: const TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(doc['email'] ?? 'No Email', style: const TextStyle(color: Colors.grey)),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => deleteUser(doc.id, collection),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
  iconTheme: const IconThemeData(
    color: Colors.white, 
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.notifications, color: Colors.white), 
      onPressed: () {
        
      },
    ),
  ],
),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blueAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.admin_panel_settings, size: 50, color: Colors.white),
                  const SizedBox(height: 10),
                  const Text("Admin Panel", style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold)),
                  const Text("Manage Users & Data", style: TextStyle(fontSize: 16, color: Colors.white70)),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.question_answer, color: Colors.blueAccent),
              title: const Text("User Queries"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const QueryListScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.lightbulb, color: Colors.orangeAccent),
              title: const Text("User Suggestions"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SuggestionListScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.feedback, color: Colors.green),
              title: const Text("User Feedback"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedbackListScreen()));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          const SizedBox(height: 10),
          buildUserList("users", "Manage Users", Icons.people),
          buildUserList("trainers", "Manage Trainers", Icons.fitness_center),
        ],
      ),
    );
  }
}
