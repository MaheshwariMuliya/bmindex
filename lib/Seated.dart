import 'package:flutter/material.dart';

class Seated extends StatelessWidget {
  const Seated({super.key});

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
              Image.asset('assets/images/img60.jpg'),
              const SizedBox(height: 16),
               RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text:
                          'Seated yoga poses are great for improving flexibility, posture, and relaxation. They focus on spinal alignment, hip opening, and breath control. These poses can be used in warm-ups, cool-downs, or meditation.\n\n',
                    ),
                    TextSpan(
                      text: 'Benefits of Seated Yoga Poses\n\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          '✅ Improves posture and spinal alignment\n✅ Enhances flexibility in hips, hamstrings, and lower back\n✅ Encourages deep breathing and relaxation\n✅ Supports meditation and mindfulness\n✅ Strengthens core and stabilizing muscles\n\n',
                    ),
                    TextSpan(
                      text: 'Common Seated Yoga Poses\n\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text: '1. Easy Pose (Sukhasana)\n\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Beginner-friendly, classic cross-legged posture\nEncourages an upright spine and relaxed breathing\nGreat for meditation and mindfulness\n\n',
                    ),
                    TextSpan(
                      text: '2. Seated Forward Bend (Paschimottanasana)\n\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Stretches the hamstrings, lower back, and spine\nHelps calm the nervous system and reduce stress\nKeep the back straight while reaching for toes\n\n',
                    ),
                    TextSpan(
                      text: '3. Butterfly Pose (Baddha Konasana)\n\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Opens the hips and groin\nImproves circulation and flexibility in inner thighs\nHold feet together and gently press knees toward the ground\n\n',
                    ),
                    TextSpan(
                      text: '4. Hero Pose (Virasana)\n\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Knees together, feet beside hips, sitting on heels or a block\nStretches thighs, knees, and ankles\nA great alternative to cross-legged sitting\n\n',
                    ),
                    TextSpan(
                      text: '5. Seated Spinal Twist (Ardha Matsyendrasana)\n\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Improves spinal mobility and digestion\nTwists the torso while keeping the spine tall\nEngages the obliques and stretches the back\n\n',
                    ),
                    TextSpan(
                      text: '6. Cow Face Pose (Gomukhasana)\n\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Stretches shoulders, chest, and hips\nKnees stacked, one arm reaching over and the other under\nEnhances flexibility in the shoulders and legs\n\n',
                    ),
                    TextSpan(
                      text: '7. Head-to-Knee Pose (Janu Sirsasana)\n\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextSpan(
                      text:
                          'Stretches hamstrings, back, and shoulders\nOne leg extended, other foot to inner thigh, fold forward\nPromotes relaxation and deep stretching\n\n',
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
