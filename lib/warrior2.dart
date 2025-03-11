import 'package:flutter/material.dart';

class Warrior2 extends StatelessWidget {
  const Warrior2({super.key});

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
                  side: BorderSide(color: const Color.fromARGB(255, 144, 145, 146), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Fierce Warrior Pose Yoga Sequence',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:const  Color(0xFF1A1A2E),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/images/img4.jpg'),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'If you\'re looking for a quick, invigorating sequence of standing yoga poses for your home practice, you\'d do well to focus on the five warrior poses.'
                            'There\'s a lot of subtle detail you can bring to your alignment to safely achieve their full benefit, while also strengthening your legs and core and improving forward and back bending.\n\n'
                            'Do a few sun salutations first to warm up, if you have time.'
                            'Decide ahead of time how many breaths you want to hold each pose in order to customize the intensity of the sequence.'
                            'If you\'re not sure, start with three breaths per pose.'
                            'For a more cardio sequence, move to a new pose on each breath.\n\n'
                    ),
                    TextSpan(
                      text: 'Mountain Pose (Tadasana)\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/images/img4(1).jpg'),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Begin by coming to stand at the front of your mat in Mountain Pose.'
                            'Taking several breaths here is a good way to bring the body to a neutral position and begin to tune into your alignment.'
                            'On the inhales, try rolling the shoulders open so your palms turn up, which helps bring your shoulder blades onto your back.\n\n'
                    ),
                    TextSpan(
                      text: 'Warrior I (Virabhadrasana I)\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/gif/gif1.gif'),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Step your left foot toward the back of your mat to come into Warrior I.'
                            'Bring the left heel to the floor and turn the toes out to about a 45-degree angle.'
                            'Begin to bend your right knee so it stacks on top of your ankle.\n\n'
                            'You may need to adjust the length of your stance (front to back).'
                            'You can also widen your stance (side to side) for greater stability.'
                            'Make sure to keep the position of your hips the same as in Mountain Pose—that is, hips pointing forward, not twisted to the side.\n\n'
                            'On the inhale, bring your arms up over your head.'
                            'A subtle backbend while doing Warrior I opens the heart and the gaze comes up to the fingertips.\n\n'
                    ),
                    TextSpan(
                      text: 'Humble Warrior Pose (Baddha Virabhadrasana)\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/gif/gif2.gif'), 
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Release your arms and bring them behind your back, interlacing your fingers in preparation for Humble Warrior.'
                            'Reach your clasped hands down your back and puff up your chest before forward bending your upper body inside your right knee.\n\n'
                            'Next, the arms go up toward the sky and the crown of your head reaches the floor.'
                            'Try to keep your right knee deeply bent, your hips squared to the front of your mat, and do your best to avoid resting your shoulder on your front knee unless more support is needed.\n\n'
                    ),
                    TextSpan(
                      text: 'Warrior II (Virabhadrasana II)\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    ],
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/gif/gif3.gif'), 
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Rise up and release your arms. Let the right arm come forward and the left arm go back for Warrior II.'
                            'You may lengthen your stance as you open your hips to face the side of the mat.\n\n'
                            'Make sure that your right knee is still deeply bent over the right ankle.'
                            'There is a tendency for the right knee to creep toward the center, so check that you can still see your right toes on the inside of your right knee.'
                            'Engage your quads and sink the hips a little lower.\n\n'
                    ),
                    TextSpan(
                      text: 'Reverse Warrior (Viparita Virabhadrasana)\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    ],
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/gif/gif4.gif'), 
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Come into Reverse Warrior by raising your right arm overhead and letting your left arm slide down the left leg.'
                            'Try to keep a light touch on the left leg instead of resting all your weight there.'
                            'The front knee stays stacked on top of the ankle as you breathe deeply into this big side stretch.\n\n'
                    ),
                    TextSpan(
                      text: 'Warrior III (Virabhadrasana III)\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    ],
                ),
              ),
              SizedBox(height: 16),
              Image.asset('assets/gif/gif5.gif'), // Add your GIF here
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Release your right arm by your side and pivot onto the ball of your left foot in preparation for Warrior III.'
                            'Your hips return to the square Warrior I position.\n\n'
                            'Straighten your right leg as you lift your left foot off the floor.'
                            'Your upper body and lifted left leg come parallel to the floor.'
                            'The choice of arm variation is up to you. You can keep the arms straight by your sides or swing them forward in line with the torso.\n\n'
                            'After you have stayed for your intended number of breaths, simply drop the left foot next to your right and come back up to stand in mountain pose.'
                            'Stay here for several breaths to regain your alignment.'
                            'Notice the differences between the two sides of your body before moving on to do the sequence on the other side.\n\n'
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
