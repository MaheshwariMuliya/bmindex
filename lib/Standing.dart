import 'package:flutter/material.dart';

class Standing extends StatelessWidget {
  const Standing({super.key});

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
              Image.asset('assets/gif/gif21.gif'),
              const SizedBox(height: 16),
               RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text:
                          'Standing yoga poses are essential for building strength, balance, flexibility, and endurance. They are often included in sequences to warm up the body, improve posture, and enhance mental focus. Here are some key standing yoga poses along with their benefits and instructions:\n\n',
                    ),
                    TextSpan(
                      text: '1. Mountain Pose (Tadasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits: Improves posture, strengthens legs, and promotes body awareness.\n\n',
                    ),
                    TextSpan(
                      text: '2. Warrior I (Virabhadrasana I)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits: Strengthens the legs, opens the hips, and stretches the chest and shoulders.\n\n',
                    ),
                    TextSpan(
                      text: '3. Warrior II (Virabhadrasana II)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits: Builds endurance, strengthens legs, and improves concentration.\n\n',
                    ),
                    TextSpan(
                      text: '4. Warrior III (Virabhadrasana III)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits: Improves balance, strengthens the legs and core, and enhances focus.\n\n',
                    ),
                    TextSpan(
                      text: '5. Triangle Pose (Trikonasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits: Stretches the spine, hamstrings, and obliques; strengthens legs.\n\n',
                    ),
                    TextSpan(
                      text: '6. Tree Pose (Vrikshasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits: Enhances balance, strengthens legs, and improves focus.\n\n',
                    ),
                    TextSpan(
                      text: '7. Chair Pose (Utkatasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits: Strengthens thighs, calves, and core; builds endurance.\n\n',
                    ),
                    TextSpan(
                      text:
                          '8. Extended Side Angle (Utthita Parsvakonasana)\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Benefits: Stretches the sides of the body, strengthens legs, and improves endurance.\n\n',
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
