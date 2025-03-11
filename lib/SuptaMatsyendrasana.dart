import 'package:flutter/material.dart';

class Suptamatsyendrasana extends StatelessWidget {
  const Suptamatsyendrasana({super.key});

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
                  side: BorderSide(color: const Color.fromARGB(255, 147, 147, 148), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Supine Spinal Twist (Supta Matsyendrasana)',
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
              Image.asset('assets/gif/gif19.gif'),
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
                      text: ' Stretch for the gluteus, chest, and obliques\n\n',
                    ),
                    TextSpan(
                      text: 'Equipment Needed:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Mat\n\n',
                    ),
                    TextSpan(
                      text: 'Level:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Beginner\n\n',
                    ),
                    TextSpan(
                      text: 'It feels good to do twists like the Supine Spinal Twist (Supta Matsyendrasana) during the cool down portion of your yoga session.'
                      ' At the end of your practice, you can take advantage of your warmed muscles to move into deep twists that help counteract the effects of too much time spent sitting in chairs.'
                      'As an experiment, try this pose when you first get on your mat and again at the end of your practice and see if you feel a difference.\n\n'
                    ),
                    TextSpan(
                      text: 'Step-by-Step Instructions\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Come to a stand with your big toes touching.\n\n'
                            '1. Lie down on your back. \n\n'
                            '2. Bend your knees and put the soles of your feet on the floor with your knees pointing up toward the ceiling.\n\n'
                            '3. Press into your feet to lift your hips slightly off the floor and shift them about an inch to your right.'
                            ' This is an important step because it sets your hips up to stack one on top of the other when you move into the twist. \n\n'
                            '4. Exhale and draw your right knee into your chest and extend your left leg flat on the floor.'
                            ' Keep your left foot actively flexed throughout the pose. Inhale.\n\n'
                            '5. Exhale and cross your right knee over your midline to the floor on the left side of your body. Your right hip is now stacked on top of your left hip.'
                            ' You can hook your right foot behind your left knee if you like.\n\n'
                            '6.Open your right arm to the right, keeping it in line with your shoulders.'
                            ' Rest your left hand on your right knee or extend it to make a T shape with the arms.'
                            ' Turn your palms toward the ceiling.\n\n'
                            '7.Turn your head to the right, bringing your gaze over your shoulder to your right fingertips.'
                            ' You can skip this step if it doesn\'t feel good on your neck. \n\n'
                            '8.On your exhalations, release your left knee and your right shoulder toward the floor.\n\n '
                            '9. Hold the pose for five to 10 breaths. To come out of the pose, inhale and roll onto your back, drawing your right knee into your chest.'
                            ' Release both legs to the floor to neutralize your spine for several breaths before doing the other side.\n\n'
                    ),
                     TextSpan(
                      text: 'Benefits \n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Supta Matsyendrasana stretches the glutes, chest, and obliques.'
                      ' Because of the chest stretch, it is considered a heart opener. It improves spinal mobility and can aid digestion.'
                      ' It is a relaxing pose at the end of a yoga session. In everyday life, your posture will benefit from this antidote to sitting and hunching over work.\n\n'
                    ),
                    TextSpan(
                      text: 'Common Mistakes\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Avoid these errors when doing this pose.\n',
                    ),
                    TextSpan(
                      text: 'Holding the Breath\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: 'You should breathe deeply and smoothly throughout this pose. Do not hold your breath.\n',
                    ),
                    TextSpan(
                      text: 'Forcing Knee to the Floor\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: 'Do not force your knee to the floor.'
                      ' If reaching the floor does not feel accessible, bring your knee over only as much as you can comfortably.'
                      ' You might place a pillow under your knees and feet.\n',
                    ),
                    TextSpan(
                      text: 'Modifications and Variations\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: 'You can make this pose more comfortable or deepen it for greater effect.\n',
                    ),
                    TextSpan(
                      text: 'Need a Modification?\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                     TextSpan(
                      text: 'You may feel like you can\'t bring your right knee to the floor and keep both shoulders flat on the ground at the same time.'
                      ' If necessary, prioritize keeping the shoulders down and let the knee float up a bit. '
                      'If your right knee is a long way from the floor, you may want to place a blanket or a block under it for support.\n\n '
                      'If having one leg straight and the other bent feels too intense, you can bend both knees and stack your legs instead.\n\n' 
                      'In pregnancy, you may be more comfortable placing a pillow between the knees during this pose.\n\n'
                    ),
                    TextSpan(
                      text: 'Up for a Challenge?\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: 'Before twisting, take your legs straight up to 90 degrees. Wrap your right leg around your left, coming into Eagle (Garudasana) legs.'
                      ' Then twist, bringing the right knee over to the left side of the body while keeping the legs intertwined.\n\n'
                    ),
                  TextSpan(
                      text: 'Safety and Precautions\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Avoid this pose if you have a recent or ongoing injury of your knees, hips, or back. '
                      'There should be no pain when doing this pose. If you feel any pain in your back or knee, come out the pose slowly.\n\n'
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