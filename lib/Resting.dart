import 'package:flutter/material.dart';

class Resting extends StatelessWidget {
  const Resting({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/img61.jpg'),
              const SizedBox(height: 16),
               RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text:
                          'Resting or Supine Yoga Poses are performed while lying on the back, promoting relaxation, flexibility, and deep stretching. These poses help in stress relief, spinal alignment, and overall well-being. They are commonly used in cool-down sequences to help the body recover and relax after intense yoga sessions.\n\n',
                    ),
                    TextSpan(
                      text: 'List of Resting or Supine Yoga Poses\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Savasana (Corpse Pose)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits:\n✅ Reduces stress and anxiety\n✅ Helps in deep relaxation and meditation\n✅ Lowers blood pressure and improves sleep\n\n',
                    ),
                    TextSpan(
                      text:
                          'Supta Baddha Konasana (Reclining Bound Angle Pose)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits:\n✅ Opens the hips and groin area\n✅ Improves circulation and relaxation\n✅ Relieves menstrual discomfort and stress\n\n',
                    ),
                    TextSpan(
                      text: 'Supta Matsyendrasana (Reclining Spinal Twist)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits:\n✅ Improves spinal flexibility and detoxifies organs\n✅ Relieves lower back pain\n✅ Enhances digestion\n\n',
                    ),
                    TextSpan(
                      text: 'Viparita Karani (Legs-Up-The-Wall Pose)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits:\n✅ Enhances blood circulation and relieves leg fatigue\n✅ Calms the nervous system and reduces anxiety\n✅ Supports lymphatic drainage\n\n',
                    ),
                    TextSpan(
                      text:
                          'Supta Padangusthasana (Reclining Hand-to-Big-Toe Pose)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits:\n✅ Stretches hamstrings and calves\n✅ Strengthens the legs and improves flexibility\n✅ Relieves lower back pain\n\n',
                    ),
                    TextSpan(
                      text: 'Balasana (Child’s Pose) – Resting Variation\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits:\n✅ Relieves stress and calms the mind\n✅ Stretches the spine, hips, and knees\n✅ Helps with digestion and relaxation\n\n',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
