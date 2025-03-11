import 'package:flutter/material.dart';

class Mountainpose extends StatelessWidget {
  const Mountainpose({super.key});

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
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: const Color.fromARGB(255, 166, 166, 167), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Mountain Pose (Tadasana)',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const  Color(0xFF1A1A2E),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/images/img2.jpg'),
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
                      text: ' Posture and alignment\n\n',
                    ),
                    TextSpan(
                      text: 'Level:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Beginner\n\n',
                    ),
                    TextSpan(
                      text: 'Mountain Pose (Tadasana) is a foundational yoga pose for all standing poses.'
                       'Tada is Sanskrit for mountain, and asana means seat or posture. '
                       'You will be using this pose often to prepare for other poses, but it also can be done by itself to help you improve your posture. '
                       'Mountain pose is an essential pose that\'s performed as part of most yoga sequences that involve standing poses, including standing forward bend, which is often the next pose in a sequence after mountain pose.\n\n'
                    ),
                    TextSpan(
                      text: 'How to Do Mountain Pose\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Come to a stand with your big toes touching.\n\n'
                            '1. Lift up all of your toes and fan them out, then drop them back down to create a wide, solid base. '
                            'You can separate your heels slightly if your ankles are knocking together uncomfortably.\n\n'
                            '2. Let your feet and calves root down into the floor.\n\n'
                            '3. Engage your quadriceps (the muscles on the front of your thighs) and draw them upward, causing your kneecaps to rise.\n\n'
                            '4. Rotate both thighs inward, creating a widening of the sit bones.\n\n'
                            '5. Maintain the natural curves of your spine.\n\n'
                            '6. Tone your belly, drawing it in slightly. \n\n'
                            '7.Shrug your shoulders up to your ears and then roll them back to release your shoulder blades down your back. \n\n'
                            '8. Widen your collarbones and check that your shoulders are stacked over your pelvis.\n\n '
                            '9. Let your arms hang naturally with the elbows slightly bent and the palms facing forward.\n\n'
                            '10.Your neck is long, your chin is neither tucked down nor lifted up, and the crown of your head rises toward the ceiling.\n\n',
                    ),
                     TextSpan(
                      text: 'Benefits of Mountain Pose\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Mountain Pose improves your posture and body awareness, strengthens your legs, and establishes good alignment.'
                      'Tadasana may not look like much, but keeping your body active and aligned is hard work.'
                      'You\'re not just standing in any old way.'
                      'You have to be aware of each part of your body and the role that it plays in stacking your bones and keeping your spine long.'
                      'You can even break a sweat if you engage your leg muscles as strongly as possible.\n\n'

                      'The basic alignment for Mountain Pose carries through to many of the other standing postures'
                      ' (Warrior I, or Virabhadrasana I, for example) and inverted poses (Handstand, or Adho Mukha Vrksasana) that you\'re going to do.\n\n'

                      'Some research shows that yoga poses like mountain pose can increase self-esteem and energy, especially those that are open and expansive rather than folded up.'
                      'This effect may be related to body alignment and how it affects the autonomous nervous system.'
                      ' Researchers suggest using these poses as a way to boost confidence instead of traditional "power poses".\n\n'
                    ),
                    TextSpan(
                      text: 'Common Mistakes\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Though this seems rather straightforward, there are missteps that many people often make that are worth being aware of.\n',
                    ),
                    TextSpan(
                      text: 'Rushing Through Tadasana\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                     TextSpan(
                      text: 'Since this pose looks so simple, there is a temptation to disregard its importance or rush through it.'
                      'Instead, make sure you get in at least one really attentive Tadasana at the beginning of each practice.' 
                      'It\'s a great way to check in with your body and set yourself up to be mindful of your form throughout all your poses.\n\n'
                    ),
                    TextSpan(
                      text: 'Thigh Rotation\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'If you are a beginner, you can build the right body awareness in Tadasana and ensure you are rotating your thighs inward by placing a block between them.'
                      ' The block should be turned so that the short end faces the front.'
                      ' Squeeze the block with your legs and roll it slightly backward to feel the engagement and rotation of the thighs.\n\n'

                      'Take several breaths this way.'
                      ' Then remove the block, but replicate the action of your thighs as if the block was still there.\n\n'

                      'You don\'t have to use the block every time, but doing so helps your body remember how to rotate the thighs inward.\n\n'

                    ),
                  TextSpan(
                      text: 'Alignment\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'You can check your alignment in mountain pose by looking in a mirror if it\s available.'
                      ' Check to see if your shoulders are stacked directly over your hips and that your hips are stacked directly over feet.'
                      ' Think how all of your joints are stacked on top of each other from ankles to shoulders.\n\n'
                    ),
                    TextSpan(
                      text: 'Modifications and Variations\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'If you find the move difficult, try a modification until you\'re more comfortable.' 
                      'Once you are, increase the challenge to get the most from this pose.\n\n'
                    ),
                    TextSpan(
                      text: 'Need a Modification?\n',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                     TextSpan(
                      text: 'If you have difficulty standing with your feet together or feel unstable doing so, place your feet hips-width apart until you feel stable.'
                      ' If you have knee problems, be sure you are not locking your knees but instead keep your needs soft or slightly bent.\n\n'
                      ' Mountain pose can also be performed standing against a wall for support or in a chair if you are unable to stand.'
                      ' When against a wall, you can add a block between your shoulder blades to help keep you in alignment and to provide additional support.'
                      ' When in the chair, your knees should be 90 degrees, so place blocks under your feet or a blanket under your bum to adjust the height accordingly.\n\n'
                    ),
                    TextSpan(
                      text: 'Up for a Challenge?\n\n',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                     TextSpan(
                      text: 'You can give yourself a balance challenge by doing Mountain Pose with your eyes closed.\n\n'
                    ),
                    TextSpan(
                      text: 'Safety and Precautions\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Mountain is a generally safe pose unless you are feeling dizzy or lightheaded.'
                      ' If you are pregnant, you may need a wider stance to feel stable.\n\n'
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