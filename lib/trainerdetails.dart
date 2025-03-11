import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'selectionscreen.dart';

class TrainerListScreen extends StatefulWidget {
  final Map<String, dynamic>? userDetails;

  const TrainerListScreen({super.key, this.userDetails});

  @override
  _TrainerListScreenState createState() => _TrainerListScreenState();
}

class _TrainerListScreenState extends State<TrainerListScreen> {
  String searchQuery = "";

  void _hireTrainer(BuildContext context, String trainerId, String trainerName) {
    FirebaseFirestore.instance.collection('trainer_notifications').add({
      'trainerId': trainerId, 
      'message': "A user is interested in your profile!",
      'timestamp': FieldValue.serverTimestamp(), 
      'userId': widget.userDetails?['userId'], 
      'userName': widget.userDetails?['name'], 
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Hired $trainerName successfully!"),
        backgroundColor: Colors.blue,
      ),
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SelectionScreen(trainerId: trainerId, trainerName: trainerName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find Your Trainer',
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Trainer...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value.toLowerCase();
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 241, 244, 248), Color(0xFF145DA0)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection('trainers').snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator(color: Colors.white));
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return const Center(
                      child: Text(
                        "No trainers available",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    );
                  }

                  var trainers = snapshot.data!.docs.where((doc) {
                    var trainerName = (doc['name'] ?? '').toString().toLowerCase();
                    return trainerName.contains(searchQuery);
                  }).toList();

                  return ListView.builder(
                    padding: const EdgeInsets.all(12.0),
                    itemCount: trainers.length,
                    itemBuilder: (context, index) {
                      var trainer = trainers[index];

                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.grey[300],
                                backgroundImage: (() {
                                  try {
                                    final profilePic = trainer['assets/images/img168.png'];
                                    return (profilePic != null && profilePic.toString().isNotEmpty)
                                        ? NetworkImage(profilePic) as ImageProvider
                                        : const AssetImage('assets/images/img168.png');
                                  } catch (e) {
                                    return const AssetImage('assets/images/img168.png');
                                  }
                                })(),
                              ),

                              const SizedBox(height: 10),

                              Text(
                                trainer['name'] ?? 'N/A',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),

                              Text(
                                trainer['location'] ?? 'N/A',
                                style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
                              ),

                              const Divider(thickness: 1, height: 20, color: Colors.grey),

                              _trainerDetail(Icons.phone, "Phone", trainer['phone']),
                              _trainerDetail(Icons.email, "Email", trainer['email']),
                              _trainerDetail(Icons.location_on, "Address", trainer['address']),
                              _trainerDetail(Icons.fitness_center, "Trainer Type", trainer['trainerType']),
                              _trainerDetail(Icons.star, "Expertise", trainer['expertise']),
                              _trainerDetail(Icons.payment, "Payment Details", trainer['paymentDetails']),
                              _trainerDetail(Icons.description, "Job Description", trainer['jobDescription']),

                              const SizedBox(height: 10),

                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () =>
                                      _hireTrainer(context, trainer.id, trainer['name'] ?? 'Trainer'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 12),
                                    elevation: 5,
                                  ),
                                  child: const Text(
                                    "Hire Trainer",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
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
            ),
          ),
        ],
      ),
    );
  }

  Widget _trainerDetail(IconData icon, String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueAccent, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              "$label: ${value ?? 'N/A'}",
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}