import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QueryRepliesScreen extends StatelessWidget {
  const QueryRepliesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Query Replies',
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
      body: StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('queries').orderBy('timestamp', descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("No queries found."));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: snapshot.data!.docs.length,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) {
              var doc = snapshot.data!.docs[index];
              Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

              return Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Query: ${data['query'] ?? "No Query"}",
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      if (data['reply'] != null && data['reply'].isNotEmpty)
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Admin Reply: ${data['reply']}",
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
                          ),
                        )
                      else
                        const Text(
                          "No reply yet",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
