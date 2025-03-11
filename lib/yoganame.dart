import 'package:flutter/material.dart';
import 'svanasana.dart';
import 'mountainpose.dart';
import 'warrior.dart';
import 'warrior2.dart';
import 'parvakonasana.dart';
import 'trikonasana.dart';
import 'urdhvahastasana.dart';
import 'uttanasana.dart';
import 'UpavisthaKonasana.dart';
import 'viparita.dart';
import 'Vrksasana.dart';
import 'malasana.dart';
import 'ardhauttanasana.dart';
import 'parsvottanasana.dart';
import 'PlankPose.dart';
import 'Paschimottanasana.dart';
import 'AshtangaNamaskara.dart';
import 'lowlunge.dart';
import 'JanuSirsasana.dart';
import 'Sarvangasana.dart';
import 'Savasana.dart';
import 'Chakravakasana.dart';
import 'BaddhaKonasana.dart';
import 'Balasana.dart';
import 'Bhujangasana.dart';
import 'Dandasana.dart';
import 'Ardhamatsyendrasana.dart';
import 'Sukhasana.dart';
import 'SuptaMatsyendrasana.dart';
import 'AnandaBalasana.dart';
import 'DogSplit.dart';

class Yoganame extends StatefulWidget {
  const Yoganame({super.key});

  @override
  State<Yoganame> createState() => _YoganameState();
}

class _YoganameState extends State<Yoganame> {
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
        shadowColor: const Color.fromARGB(255, 206, 203, 203).withOpacity(0.5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [const Color.fromARGB(255, 246, 246, 250), Colors.blue],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: const Color.fromARGB(255, 153, 154, 155), width: 2),
                    ),
                    elevation: 8,
                    color: Colors.white.withOpacity(0.9),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'YOGA NAME',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color:Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  _buildYogaButton(
                    context,
                    'Downward Facing Dog\n(Adho Mukha Svanasana)',
                    const Svanasana(),
                    Icons.pets,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Mountain Pose\n(Tadasana)',
                    const Mountainpose(),
                    Icons.landscape,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Warrior I\n(Virabhadrasana I)',
                    const Warrior(),
                    Icons.directions_run,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Warrior II\n(Virabhadrasana II)',
                    const Warrior2(),
                    Icons.directions_run,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Extended Side Angle\n(Utthita Parvakonasana)',
                    const Parvakonasana(),
                    Icons.open_with,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Triangle Pose\n(Utthita Trikonasana)',
                    const Trikonasana(),
                    Icons.change_history,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Standing Forward Bend\n(Uttanasana)',
                    const Uttanasana(),
                    Icons.arrow_downward,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Reverse Warrior\n(Viparita Virabhadrasana)',
                    const Viparita(),
                    Icons.flip,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Garland Pose\n(Malasana)',
                    const Malasana(),
                    Icons.eco,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Half Forward Bend\n(Ardha Uttanasana)',
                    const Ardhauttanasana(),
                    Icons.arrow_downward,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Pyramid Pose\n(Parsvottanasana)',
                    const Parsvottanasana(),
                    Icons.change_history,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Raised Hands Pose\n(Urdhva Hastasana)',
                    const Urdhvahastasana(),
                    Icons.arrow_upward,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Low Lunge',
                    const Lowlunge(),
                    Icons.directions_walk,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Tree Pose\n(Vrksasana)',
                    const Vrksasana(),
                    Icons.park,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Downward Facing Dog Split',
                    const Dogsplit(),
                    Icons.pets,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Plank Pose',
                    const Plankpose(),
                    Icons.view_agenda,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Cat-Cow Stretch\n(Chakravakasana)',
                    const Chakravakasana(),
                    Icons.pets,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Bridge Pose\n(Setu Bandha Sarvangasana)',
                    const Sarvangasana(),
                    Icons.architecture,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Cobra Pose\n(Bhujangasana)',
                    const Bhujangasana(),
                    Icons.zoom_out_map,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Knees, Chest, and Chin\n(Ashtanga Namaskara)',
                    const Ashtanganamaskara(),
                    Icons.zoom_out_map,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Staff Pose\n(Dandasana)',
                    const Dandasana(),
                    Icons.straighten,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Cobblers Pose\n(Baddha Konasana)',
                    const Baddhakonasana(),
                    Icons.eco,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Easy Pose\n(Sukhasana)',
                    const Sukhasana(),
                    Icons.self_improvement,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Half Lord of the Fishes Pose\n(Ardha Matsyendrasana)',
                    const Ardhamatsyendrasana(),
                    Icons.rotate_right,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Head to Knee Pose\n(Janu Sirsasana)',
                    const Janusirsasana(),
                    Icons.arrow_downward,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Seated Forward Bend\n(Paschimottanasana)',
                    const Paschimottanasana(),
                    Icons.arrow_downward,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Seated Wide Angle Straddle\n(Upavistha Konasana)',
                    const Upavisthakonasana(),
                    Icons.open_with,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Happy Baby Pose\n(Ananda Balasana)',
                    const Anandabalasana(),
                    Icons.child_care,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Supine Spinal Twist\n(Supta Matsyendrasana)',
                    const Suptamatsyendrasana(),
                    Icons.rotate_right,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Childs Pose\n(Balasana)',
                    const Balasana(),
                    Icons.child_friendly,
                  ),
                  const SizedBox(height: 20),
                  _buildYogaButton(
                    context,
                    'Corpse Pose\n(Savasana)',
                    const Savasana(),
                    Icons.self_improvement,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildYogaButton(BuildContext context, String text, Widget page, IconData icon) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        backgroundColor: Colors.white.withOpacity(0.9),
        foregroundColor:Colors.blue,
        side: const BorderSide(color:Colors.blue, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24, color:Colors.blue),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}