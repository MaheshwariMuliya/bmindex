import 'package:flutter/material.dart';

class Balasana extends StatelessWidget {
  const Balasana({super.key});

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
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: const Color.fromARGB(255, 175, 176, 177), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Child\'s Pose (Balasana)',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:   Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/gif/gif20.gif'),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Targets:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: ' Resting, gentle stretch\n\n',
                    ),
                    TextSpan(
                      text: 'Equipment Needed:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Yoga mat (optional)\n\n',
                    ),
                    TextSpan(
                      text: 'Level:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Beginner\n\n',
                    ),
                    TextSpan(
                      text: 'Child\'s Pose is yoga\'s most important resting posture and a wonderful way to stretch your body.'
                      ' It\'s a chance to stop what you are doing, reassess your position, reconnect with your breath, and prepare yourself to move forward.'
                      ' In class, the teacher may offer the opportunity to rest in child\'s pose after a fast-paced vinyasa sequence, a long hold in a pose like downward-facing dog or plank, or an attempt at a challenging inversion. '
                      'It is a counter pose for cobra and other back extensions.\n\n'
                    ),
                    TextSpan(
                      text: 'How To Do Child\'s Pose\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Come to a stand with your big toes touching.\n\n'
                            '1. Come to your hands and knees on the yoga mat. \n\n'
                            '2. Spread your knees as wide as your mat, keeping the tops of your feet on the floor with the big toes touching.\n\n'
                            '3. Rest your belly between your thighs and root your forehead to the floor.'
                            ' Relax the shoulders, jaw, and eyes.'
                            ' If it is uncomfortable to place your forehead on the floor, rest it on a block or two stacked fists.'
                            ' There is an energy point at the center of the forehead in between the eyebrows that stimulates the vagus nerve and supports a "rest and digest" response.'
                            ' Finding a comfortable place for your forehead is key to gaining this soothing benefit.\n\n'
                            '4. Stretch your arms in front of you with palms toward the floor or bring your arms back alongside your thighs with palms facing upwards.'
                            ' You can also stretch your arms forward with palms facing up for a shoulder release or try bending your elbows so palms touch and rest your thumbs at the back of the neck.'
                            'In this position inch the elbows forward.\n\n'
                            '5. Stay as long as you like, eventually reconnecting with the steady inhales and exhales of your breath.\n\n'
                    ),
                     TextSpan(
                      text: 'Benefits of Child\'s Pose \n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Child\'s Pose is a gentle stretch for the shoulders, back, hips, thighs, neck, and ankles.\nIt can help relieve back pain.\n\n'
                      ' Child\'s pose can promote deep breathing, mindfulness, and relaxation.\nEvidence has shown that a breathing practice can lower blood pressure and improve lung function and respiratory fitness.\n\n'
                      ' Learning to use this pose wisely is the part of your developing practice where you listen to your body\'s inner voice and do what it tells you. '
                      'Your body will tell you when to rest.\n'
                      ' It might need different things on different days.\n'
                      ' Keeping your ear finely tuned to the messages your body is sending you and respectfully responding to them is the greater lesson that child\'s pose has to offer.\n'
                      ' You will come to know when to use child\'s pose during your yoga practice.\n\n'
                    ),
                    TextSpan(
                      text: 'Other Variations of Child\'s Pose\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'You can keep your knees together instead of separating them if that is more comfortable for you.\n Likewise, you can curl your toes if it is painful to have feet flat or place a rolled towel under your shins to take stress off your ankles.\n\n'

                      'You can place a yoga blanket or a towel underneath your knees for padding and support.\n\n'
                        'For a restorative variation, place a bolster or pillow under your stomach or chest and assume the pose for up to 10 minutes.\n\n',
                    ),
                    TextSpan(
                      text: 'Up for a Challenge?\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: 'You can get a deeper stretch of hips by spreading your knees wider.\n',
                    ),
                    TextSpan(
                      text: 'Child\'s Pose Common Mistakes\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Balasana is one of the more restful yoga poses, but that does not mean form doesn\'t matter.\n It\'s important to ensure your forehead is resting on the ground.\n If you\'re still working toward the flexibility to keep your forehead to the ground and the sitz bones resting on your heels, put a folded blanket under your buttocks to bridge the gap.\n\n'
                        'Because your stomach can be compressed somewhat in this position, it\'s better to do this pose at least an hour after eating. It can be easy to forget to breathe fully into your lungs during child\'s pose. Maintain focus on the breath.\n\n'
                        'Your neck should stay in a neutral position. \n If you find you are bending your neck, use a pillow, yoga block, or another prop to keep pressure off your neck.\n\n',
                    ),
                    TextSpan(
                      text: 'Safety and Precautions\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: 'Avoid child\'s pose if you have a knee injury. If you are pregnant, spread your legs wider and don\'t press your stomach onto your thighs. If you have a shoulder injury, keep your arms by your side for the most support.'
                      'If you feel any pain, ease out of the pose.\n',
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