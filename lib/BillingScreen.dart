import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BillingScreen extends StatelessWidget {
  final String trainerName;
  final String trainerPrice;

  const BillingScreen({
    Key? key,
    required this.trainerName,
    required this.trainerPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Card(
            margin: const EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Billing Details',
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    leading: const Icon(Icons.person, color: Colors.blueAccent),
                    title: Text(
                      "Trainer",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      trainerName,
                      style: GoogleFonts.lato(fontSize: 16),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.monetization_on, color: Colors.green),
                    title: Text(
                      "Amount",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "₹$trainerPrice",
                      style: GoogleFonts.lato(fontSize: 16, color: Colors.green),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Proceeding to Payment...")),
                        );
                      },
                      icon: const Icon(Icons.payment),
                      label: const Text("Pay Now"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        textStyle: GoogleFonts.lato(fontSize: 18),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32.0,
                          vertical: 12.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
