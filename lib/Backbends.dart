import 'package:flutter/material.dart';

class Backbends extends StatelessWidget {
  const Backbends({super.key});

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
        backgroundColor:Colors.blue,
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
              Image.asset('assets/images/img59.jpg'),
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text:
                          'Backbends are a category of yoga and fitness poses that involve extending the spine backward, improving flexibility, strength, and posture. They can range from gentle stretches to deep bends, depending on experience and mobility.\n\n',
                    ),
                    TextSpan(
                      text: 'Benefits of Backbends Yoga Poses\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Improves spinal flexibility and mobility \nStrengthens the back, core, and shoulders\nOpens the chest and improves breathing\nEnhances posture and counters the effects of sitting\nBoosts energy and reduces stress\n\n',
                    ),
                    TextSpan(
                      text: 'Common Backbend Poses\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text: '1. Cobra Pose (Bhujangasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Beginner-friendly\nLie on your stomach, hands under shoulders, and lift the chest\nEngages lower back muscles and stretches the spine\n\n',
                    ),
                    TextSpan(
                      text: '2. Upward-Facing Dog (Urdhva Mukha Svanasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Similar to Cobra but with lifted thighs and extended arms \n Strengthens the back and opens the chest\n\n',
                    ),
                    TextSpan(
                      text: '3. Bridge Pose (Setu Bandhasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Beginner-to-intermediate level\n Lie on your back, bend knees, and lift hips\nStrengthens glutes, lower back, and hamstrings\n\n',
                    ),
                    TextSpan(
                      text: '4. Wheel Pose (Urdhva Dhanurasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Advanced pose\n Full backbend from a lying position, pressing into hands and feet\n Requires shoulder, spine, and leg flexibility\n\n',
                    ),
                    TextSpan(
                      text: '5. Camel Pose (Ustrasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Kneeling pose with a deep backbend, reaching for heels \n Opens the chest and stretches the hip flexors\n\n',
                    ),
                    TextSpan(
                      text: '6. King Pigeon Pose (Kapotasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Deep backbend in a low lunge with foot grasp\n Requires flexibility and strength in the back and hips\n\n',
                    ),
                    TextSpan(
                      text: '9. Half Moon Pose (Ardha Chandrasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits: Improves balance, strengthens legs, and stretches the spine.\n\n',
                    ),
                    TextSpan(
                      text: '10. Standing Forward Bend (Uttanasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits: Stretches the hamstrings, calves, and lower back; calms the mind.\n\n',
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
