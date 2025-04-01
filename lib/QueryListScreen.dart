import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QueryListScreen extends StatelessWidget {
  const QueryListScreen({super.key});

void replyToQuery(BuildContext context, String docId, String currentReply) {
  TextEditingController replyController = TextEditingController(text: currentReply);

  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 10,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title
              const Text(
                "Reply to Query",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 15),

              // TextField with enhanced styling
              TextField(
                controller: replyController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Type your reply here...",
                  labelText: "Enter your reply",
                  labelStyle: TextStyle(color: Colors.blueAccent),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.blueAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.blue, width: 2),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                ),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text("Cancel", style: TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await FirebaseFirestore.instance
                          .collection('Query')
                          .doc(docId)
                          .update({'reply': replyController.text});
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.blueAccent,
                      elevation: 5,
                    ),
                    child: const Text("Send Reply", style: TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
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
        shadowColor: Colors.black.withOpacity(0.2),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('queries').orderBy('timestamp', descending: true).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          if (snapshot.data!.docs.isEmpty) return const Center(child: Text("No queries found."));

          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: snapshot.data!.docs.length,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) {
              var doc = snapshot.data!.docs[index];
              Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
              String reply = data['reply'] ?? '';

              return Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['name'] ?? "No Name", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Text("Email: ${data['email']}", style: const TextStyle(color: Colors.black54)),
                      Text("Phone: ${data['phone']}", style: const TextStyle(color: Colors.black54)),
                      const SizedBox(height: 10),
                      Text("Query:", style: const TextStyle(fontWeight: FontWeight.bold)),
                      Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(8)),
                        child: Text(data['query'] ?? 'No Query'),
                      ),
                      const SizedBox(height: 10),
                      if (reply.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Reply:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                            Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(color: Colors.green.shade50, borderRadius: BorderRadius.circular(8)),
                              child: Text(reply),
                            ),
                          ],
                        ),
                      const SizedBox(height: 10),

                      // 🌟 Attractive Reply Button
                      GestureDetector(
                        onTap: () => replyToQuery(context, doc.id, reply),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: reply.isEmpty
                                  ? [Colors.blue, Colors.blueAccent] // Default colors
                                  : [Colors.blue, Colors.blueAccent], // Reply sent colors
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: const Offset(2, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.reply, color: Colors.white),
                              const SizedBox(width: 8),
                              Text(
                                reply.isEmpty ? "Reply" : "Edit Reply",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
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
