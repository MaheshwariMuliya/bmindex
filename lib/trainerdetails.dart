import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BillingScreen.dart';
import 'SelectionScreen.dart';

class TrainerListScreen extends StatefulWidget {
  final Map<String, dynamic>? userDetails;

  const TrainerListScreen({Key? key, this.userDetails}) : super(key: key);

  @override
  _TrainerListScreenState createState() => _TrainerListScreenState();
}

class _TrainerListScreenState extends State<TrainerListScreen> {
  String searchQuery = "";

  void _hireTrainer(BuildContext context, String trainerId, String trainerName) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    Map<String, dynamic>? userDetails = widget.userDetails;

    if (userDetails == null || userDetails['email'] == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Fetching user details..."), backgroundColor: Colors.red),
      );
      return;
    }

    String userName = userDetails['name'] ?? 'Unknown User';
    String userEmail = userDetails['email'] ?? 'No Email';

    try {
      await firestore.collection('trainers').doc(trainerId).collection('notifications').add({
        'message': "$userName is interested in $trainerName's profile!",
        'timestamp': FieldValue.serverTimestamp(),
        'userName': userName,
        'userEmail': userEmail,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Trainer notified successfully!"), backgroundColor: Colors.green),
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SelectionScreen(trainerId: trainerId),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error sending notification: $e"), backgroundColor: Colors.red),
      );
    }
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
      body: Column(
        children: [
          // Search Field
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Trainer...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value.toLowerCase();
                });
              },
            ),
          ),
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('trainers').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Center(child: Text("No trainers available", style: TextStyle(fontSize: 18)));
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
                    String trainerId = trainer.id;
                    String trainerName = trainer['name'] ?? 'N/A';
                    String trainerPrice = trainer['paymentDetails'] ?? '500';

                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundColor: Colors.grey[300],
                              backgroundImage: const AssetImage('assets/images/img168.png'),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              trainerName,
                              style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(trainer['location'] ?? 'N/A', style: const TextStyle(fontSize: 14, color: Colors.blueGrey)),
                            const Divider(thickness: 1, height: 20),
                            _trainerDetail(Icons.phone, "Phone", trainer['phone']),
                            _trainerDetail(Icons.email, "Email", trainer['email']),
                            _trainerDetail(Icons.location_on, "Location", trainer['location']),
                            _trainerDetail(Icons.home, "Address", trainer['address']),
                            _trainerDetail(Icons.star, "Expertise", trainer['expertise']),
                            _trainerDetail(Icons.account_balance_wallet, "Payment Details", trainerPrice),
                            _trainerDetail(Icons.work, "Job Description", trainer['jobDescription']),
                            const SizedBox(height: 10),
                            Column(
                              children: [
                               ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BillingScreen(
                                          trainerName: trainerName,
                                          trainerPrice: trainerPrice,
                                        ),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10), // Rounded corners
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 70), // Increased horizontal padding for longer button
                                  ),
                                  child: const Text(
                                    "Show Bill", 
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () => _hireTrainer(context, trainerId, trainer['name'] ?? 'Trainer'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10), 
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 70), 
                                  ),
                                  child: const Text(
                                    "Hire Trainer", 
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),

                              ],
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
        ],
      ),
    );
  }

  Widget _trainerDetail(IconData icon, String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueAccent, size: 20),
        const SizedBox(width: 10),
        Expanded(
          child: Text("$label: ${value ?? 'N/A'}", style: TextStyle(fontSize: 14, color: Colors.grey[700])),
        ),
      ],
    ),
  );
}
}