import 'package:flutter/material.dart';

class Svanasana extends StatelessWidget {
  const Svanasana({super.key});

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
                  side: BorderSide(color: const Color.fromARGB(255, 145, 146, 146), width: 2),
                ),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Downward Dog (Adho Mukha Svanasana)',
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
              Image.asset('assets/images/img1.jpg'),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Also Known As:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Downward Dog, Downdog\n\n',
                    ),
                    TextSpan(
                      text: 'Targets:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Hamstring and calf stretch, mild inversion\n\n',
                    ),
                    TextSpan(
                      text: 'Level:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Beginner\n\n',
                    ),
                    TextSpan(
                      text: 'Benefits\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Downward Facing Dog stretches the hamstrings and calves, and it strengthens the arms and legs. '
                            'The pose also helps increase the strength of the external oblique abdominal muscles. '
                            'As a mild inversion, Downward Dog acts in reverse of the usual forces on your spine and brings more blood flow to your brain. '
                            'When incorporated into a weekly yoga practice, it may even help relieve chronic back pain.\n\n',
                    ),
                    TextSpan(
                      text: 'Step-by-Step Instructions\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'You can do this pose anywhere you can lay out a yoga mat.\n\n'
                            '1. Come to your hands and knees with your wrists underneath the shoulders and your knees underneath the hips.\n\n'
                            '2. Curl your toes under and push back through your hands to lift your hips and straighten your legs.\n\n'
                            '3. Spread your fingers and ground down from the forearms into the fingertips.\n\n'
                            '4. Outwardly rotate your upper arms to broaden the collarbones.\n\n'
                            '5. Let your head hang and move your shoulder blades away from your ears towards your hips.\n\n'
                            '6. Engage your quadriceps strongly to take the burden of your body\'s weight off your arms. '
                            'This action goes a long way toward making this a resting pose.\n\n'
                            '7. Rotate your thighs inward, keep your tail high, and sink your heels towards the floor.\n\n'
                            '8. Check that the distance between your hands and feet is correct by coming forward to a plank position.\n\n '
                            'The distance between the hands and feet should be the same in these two poses. Do not step the feet toward the hands in Down Dog in order the get the heels to the floor.\n\n'
                            '9. Exhale and bend your knees to release and come back to your hands and knees.\n\n',
                    ),
                    TextSpan(
                      text: 'Common Mistakes\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Not Releasing Your Heels\n',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                     TextSpan(
                      text: 'The most common issue with beginners Downward Facing Dog is that they don t release their heels toward the floor.'
                      'If you are up on the balls of your feet, it shifts the trajectory of the pose forward instead of back.'
                      'It will never be a resting position unless you take your weight back into your heels.\n\n'
                      'This doesnt mean that the heels have to touch the floor; they just have to be moving in that direction.' 
                      'If your teacher gives you an adjustment in this pose, its most often to gently pull or push your hips back.'
                      'Keep that feeling in mind and use it to adjust yourself.\n\n'
                    ),
                    TextSpan(
                      text: 'Butt Position\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'To get your butt in the right position, bend your knees, coming up onto the balls of your feet (just for a minute!).'
                      'Bring your belly to rest on your thighs and your sit bones up high.'
                      'Then sink your heels and straighten your legs while keeping the high upward rotation of the sit bones.\n\n'
                    ),
                  TextSpan(
                      text: 'Banana Back\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'If you are very flexible, try not to let your rib cage sink towards the floor, creating a sinking spine (also known as banana back).'
                      'Draw your ribs in to maintain a flat back. \n\n'
                    ),
                    TextSpan(
                      text: 'Foot Position\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Your toes should be pointing toward the front of your mat.'
                      'Its quite common for new students to want to turn their feet out, especially if they have had dance training.\n\n'
                      'The distance between the feet can also be problematic.'
                      'Very often, students take them too wide (near the edges of the mat) or too narrow (touching one another).\n\n'
                      'Your feet should be hip-width apart, which leaves about 6 inches of space between them, give or take a bit depending on your size.' 
                      'Set up the feet correctly, release the heels, keep your butt high, and you will have a good foundation for this pose.\n\n'
                    ),
                    TextSpan(
                      text: 'Modifications and Variations\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Need a Modification?\n',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                     TextSpan(
                      text: 'If you have very tight hamstrings, you may not be able to keep your butt high and straighten your legs at the same time.'
                      'If that is the case, its okay to keep a slight bend in your knees.'
                      ' Your hamstrings will lengthen over time with the consistent practice of other poses.\n\n'
                      ' You can place a yoga block under your head to do a restorative version of the pose.'
                      ' For greater comfort, you can also use a block under your hands or a folded towel under your wrists.\n\n'
                    ),
                    TextSpan(
                      text: 'Up for a Challenge?\n',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                     TextSpan(
                      text: 'You can deepen the pose by lifting your heels slightly from the floor and placing the weight on the balls of your feet.'
                      ' Draw in your pelvis and then return your heels to the floor.\n\n'
                    ),
                    TextSpan(
                      text: 'Safety and Precautions\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'This pose is not recommended if you have a wrist injury or carpal tunnel syndrome, or if you are in the last trimester of pregnancy.'
                      'It should also be avoided if you have high blood pressure, heart disease, vertigo, or a slipped disc in your spine\n\n'
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
