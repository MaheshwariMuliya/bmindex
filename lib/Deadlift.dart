import 'package:flutter/material.dart';

class Deadlift extends StatelessWidget {
  const Deadlift ({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Deadlift',
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 239, 239, 243),Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10),
                    buildInstructionStep(' The deadlift is an extremely popular exercise and a true test of total body strength.'),
                    buildInstructionStep(' It is popular across numerous weight lifting circle including bodybuilders, powerlifts, and Crossfit athletes. The deadlift focuses on lifting dead weight off the ground to hip level without using momentum to assist the weight on its path up. It is known as one of the “big three” exercises for powerlifters which includes squats, bench press, and the deadlift. Bodybuilders use the deadlift to promote muscle growth in their entire posterior chain (muscles on the back of the body).'),
                    buildInstructionStep(' The deadlift primarily works the muscles of the hamstrings. However, it is a complete compound exercise and also requires muscle activation from the back, glutes, hamstrings, arms, and core. The conventional deadlift shouldn’t be performed by just anyone as it involves a lot of technique and skill to execute. However, the hip-hinge movement pattern trained while performing a deadlift is and should be included in every workout program. For those who cannot deadlift using the conventional pulling method, they can perform the exercise using one of the many deadlift variations out there.'),
                    const SizedBox(height: 20),
                     Image.asset(
                      'assets/images/img80.jpg', 
                      height: 200,
                      width: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Deadlift Instructions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. Position the bar over the top of your shoelaces and assume a hip width stance.'),
                    buildTip('2. Push your hips back and hinge forward until your torso is nearly parallel with the floor.'),
                    buildTip('3. Reach down and grasp the bar using a shoulder width, double overhand grip.'),
                    buildTip('4. Inhale and pull up slightly on the bar while allowing your hips to drop in a seesaw fashion. This phenomenon is commonly referred to as “pulling the slack out of the bar”'),
                    buildTip('5. As you drop the hips and pull up on the bar, set the lats (imagine you’re trying to squeeze oranges in your armpits) and ensure your armpits are positioned directly over the bar.'),
                    buildTip('6. Drive through the whole foot and focus on pushing the floor away.'),
                    buildTip('7. Ensure the bar tracks in a straight line as you extend the knees and hips.'),
                    buildTip('8. Once you have locked out the hips, reverse the movement by pushing the hips back and hinging forward.'),
                    buildTip('9. Return the bar to the floor, reset, and repeat for the desired number of repetitions.'),
                    const SizedBox(height: 20),
                    const Text(
                      ' Deadlift Tips',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    buildTip('1. You MUST keep the crease of the armpit over the bar and the midfoot in order to allow the bar to travel linearly.'),
                    buildTip('2. The deadlift is a hinge, not a squat. If you set the hips too low you will put yourself in a disadvantageous position biomechanically and limit your potential for pulling maximal weights.'),
                    buildTip('3. In order to prevent the bar from drifting away from the body, one should focus on squeezing their lats in order to keep the bar close and allow it to travel in a linear fashion. Use the cue: “squeeze oranges in your armpits”, “put your shoulder blades in your back pockets” (i.e. scapular depression) or “imagine you’re doing a straight arm pulldown”.'),
                    buildTip('4. The hips should be lower than the shoulders and you should be able to see the logo on the lifter’s shirt before they pull (i.e. “chest up”). The chest up cue is usually accomplished when the lats become locked in though so this cue is typically not needed if the lifter understands how to initiate the lats.'),
                    buildTip('5. Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider: o If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin. o On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension. o Experiment with each and see which one works best for your individual anatomy and biomechanics.'),
                    buildTip('6. Ideally you should cue and emphasize a vertical shin but this will depend entirely on a lifter’s spine and limb length.'),
                    buildTip('7. Toe angle is highly individual - this will be dependent upon your hip anatomy. Experiment (toes slightly in, out, or neutral) to see what feels best for you.'),
                    buildTip('8. Do NOT retract your shoulder blades. This is mechanically inefficient and a self limiting cue as it shortens the length of the arms thus requiring a larger range of motion.'),
                    buildTip('9. Make sure you wrap your thumbs around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.'),
                    buildTip('10. Scraping the shins isn’t always necessary in the deadlift. It may occur more frequently with sumo rather than conventional work but if you have the arm pits in the correct position (as noted above) then the bar should travel vertically and the shins will become vertical and move out of the way as the knees extend.'),
                    ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExerciseDetail(String title, String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: detail,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInstructionStep(String step) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        step,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildTip(String tip) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        tip,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
