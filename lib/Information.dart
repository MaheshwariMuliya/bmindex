import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FLEX FITNESS',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.blue,
        shadowColor: const Color.fromARGB(255, 247, 250, 250).withOpacity(0.5),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Top 10 Most Frequently Asked Questions in a Fitness Centre (and Their Answers)\n\n",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              foodCard(
                '1. What Is the Best Way to Lose Fat?',
                'The simple (and complex) answer is that there is no “best way” to lose fat. Each client will respond differently to a training program. However, there are some principles fitness professionals can apply when designing their clients’ programs. Activities that incorporate many muscle groups and are weight bearing use more calories per minute and are therefore better suited for fat loss than non-weight-bearing activities that do not use many muscles. It is often assumed that low-intensity exercise is best for burning fat.\nDuring exercise at a very low intensity, fat does account for most of the energy expenditure, while at a moderate intensity, fat accounts for only about 50 present of the energy used. However, since the number of calories used per minute is much greater at a moderate to high intensity than at a low intensity, the total number of calories expended during a moderate- to high-intensity workout is greater than it is during a low- intensity workout of the same duration; consequently, the total number of fat calories expended is also greater during the higher-intensity workout. The rate of energy expenditure, rather than simply the percentage of energy expenditure derived from fat, is important in determining the exercise intensity that will use the most fat. Furthermore, endurance-trained individuals rely less on carbohydrates and more on fat as a fuel source during submaximal exercise (Kiens 1997). Thus, the more aerobically trained your clients become, the more fat they will use during subsequent exercise sessions. To decrease body fat percentage, your clients do not necessarily have to use fat during exercise. Much of the fat from adipose tissue (as opposed to intramuscular fat, which is primarily used during exercise) is lost in the hours following exercise.\nMoreover, the amount of fat lost after a workout depends, in part, on the exercise intensity during the workout. Following high-intensity exercise, the rate of fat oxidation is higher than it is following low-intensity exercise (Mullah et al. 2000; Phelain et al. 1997). Because clients can perform a greater intensity of work if the work is broken up with periods of rest, interval training is a great way to perform high-intensity work and help decrease body fat percentage.',
              ),
              foodCard(
                '2. If I Lift Weights, Will I Get Bigger Muscles?',
                'Whether or not your clients will get bigger muscles (hypertrophy) depends on three basic factors: genetics, gender and training intensity. Genetics is mostly manifested as muscle fiber type; people with predominantly fast-twitch fibers acquire larger muscles more easily than people with predominantly slow-twitch fibers. In relation to gender, males acquire larger muscles than females do, because males have greater amounts of testosterone and other sex hormones that influence protein metabolism (Tipton 2001). Thus, females experience less muscle hypertrophy with strength improvement than males do (Lewis et al. 1986). Training intensity is the only factor you can control.\n Hypertrophy results from an increase in the number of contractile proteins (actin and myosin, produced by the body in response to training), which in turn increases the size of the muscle fibers',
              ),
              foodCard(
                '3. How Do I Get a Flat Stomach?',
                ' Genetics also plays a role in whether or not your clients can obtain a flat stomach or a “six-pack” look to their abdominals. Having said that, two types of exercise can help: strength training and cardiovascular exercise. The abdominals are just like any other muscle group: For their definition to become visible, they must grow larger and the fat that lies over them must decrease. What makes the definition of the abdominals so difficult to see is that they are situated in the area of the body that contains the most fat. Strength training the abdominals is only half the story. Your clients will get a flat stomach only if they combine strength training with cardiovascular exercise to get rid of the fat. Most clients do not do nearly enough cardiovascular exercise to decrease their body fat percentage to a point where they would see their abdominals. Even when the aerobic exercise stimulus is adequate, the role of diet must not be underestimated. All people with a flat stomach or six-pack have a very low percentage of body fat.',
              ),
              foodCard(
                ' 4. Should I Do Cardio First or Weight Training First?',
                ' It depends on the client’s goals. Many personal trainers think that performing strength training before cardiovascular exercise will augment the amount of fat used during the cardio workout because the strength training will deplete the muscles’ store of carbohydrates (glycogen). However, strength training is not likely to deplete glycogen stores, because a lot of the workout time is spent resting between sets and exercises. Even if the strength workout were long and intense enough to accomplish this task, exercising in a glycogen-depleted state has many negative consequences, including an increase in acidic compounds produced in response to low carbohydrate levels, low blood insulin, hypoglycaemia, increased amino acid (protein) metabolism, increased blood and muscle ammonia and a strong perception of fatigue. Currently, no research shows that strength training immediately before a cardio workout increases the amount of fat used during the cardio workout, or vice versa. Most likely, the intensity of the activity, not the mode of exercise, determines the “fuel”—either fat, carbohydrate or protein—that is used. However, if clients strength train first, it is possible that muscle fatigue incurred from the strength training could cause them to decrease the intensity of their subsequent cardio workout, thus leading them to expend fewer calories over the workout as a whole. If the primary goal is to increase aerobic endurance or lose weight, then the client should perform cardiovascular exercise first. If the primary goal is to increase muscular strength, then the client should perform strength training first. Basically, in order to get the most out of the workout, the client should perform the most important type of exercise when he or she is not fatigued. Because many clients want to lose weight and increase muscular strength, alternating the order of the workout during different cycles of training is one way to satisfy both goals.',
              ),
              foodCard(
                ' 5. Do I Need to Take Dietary Supplements?',
                'Your clients do not need dietary supplements unless they have a documented vitamin deficiency or they do not eat a balanced diet. Using supplements as an alternative to a sound diet can lead to serious deficits in the consumption of other nutrients (Benardot et al. 2001). It is always healthier to acquire vitamins and minerals from food than to obtain them from a pill. However, serious vitamin deficiencies do occur in a small proportion of the population (Benardot et al. 2001), and supplements are useful for making sudden improvements in vitamin status.',
              ),
              foodCard(
                '6. What Is My Target Heart Rate?',
                'Target heart rate—the heart rate range used to determine the desired intensity of an activity—will differ depending on the goal of the workout. You can calculate target heart rate using a percentage of your client’s heart rate maximum (HRmax), which can be predicted by subtracting your client’s age from 220, or by measuring your client’s heart rate while he or she performs a maximum exercise test. You can also calculate target heart rate using the Karvonen method, which takes into account your client\’s resting heart rate (RHR).\n Subtract your client\’s RHR from his or her age-predicted HRmax before multiplying the outcome by the desired percentage. Then add the RHR back onto that value. The difference between HRmax and RHR is called heart rate reserve (HRR).\nSince RHR will decrease as cardiovascular fitness improves and HRmax can decrease with age, periodically recalculate target heart rate as your clients become more fit (or more sedentary) and get older. Age-predicted HRmax may be off by more than 10 to 15 beats per minute, since all people of the same age do not have the same HRmax. Therefore, it is much more accurate to directly determine HRmax with a maximum exercise test. Use HRmax, but don’t forget to consider subjective factors, such as how the client feels.',
              ),
              foodCard(
                '7. What Is the Difference Between Weight Machines and Free Weights?',
                ' Ignoring the effect of gravity in creating resistance during all movements, free weights (dumbbells) keep the resistance on the muscle constant throughout the joint’s range of motion (ROM), while weight machines use variable resistance, with the resistance changing throughout the ROM. Machines have geometrically shaped cams that change the torque required of the muscles by changing the lever arm of the resistance force (external weight) or the applied muscular force.\n Thus, machines place more stress on the muscles at the angles at which muscles can produce greater force. Since there are points in a joint’s ROM where the muscle is stronger and points where it is weaker, and the amount of weight your clients can lift is limited by their weakest point, free weights serve only as a strong enough training stimulus for the weak joint positions. With machines, the load changes to provide optimal resistance throughout the entire ROM. On the other hand, movements using free weights occur in a three-dimensional plane, while most weight machines allow movement only in a single plane.\nWith machines, the movement is guided, so only the major muscles required to perform the movement are used. With free weights, the added task of balancing the weights in the three-dimensional plane recruits other functional muscles that machines do not recruit.',
              ),
              foodCard(
                '8. Why Are My Muscles Sore After a Workout?',
                'Soreness results from high force production when an exercise is new or a load is greater than normal. Furthermore, eccentric muscle contractions (in which the muscle lengthens, as when lowering a weight) cause more soreness in the days following the workout than either isometric contractions (in which the muscle does not change length, as when holding a weight) or concentric contractions (in which the muscle shortens, as when lifting a weight). This soreness in the days after exertion is called delayed onset muscle soreness (DOMS) (Armstrong 1984; Clarkson & Sayers 1999). Although many people think that lactic acid is the cause of muscle soreness, the fact is that lactic acid (lactate) is removed from the muscles within 30 to 60 minutes after exercise, so it is long gone by the time soreness develops. Muscle soreness results from an immediate mechanical injury and a biochemical injury occurring a few days after the workout (Faulkner et al. 1993).\n The mechanical injury is caused when the myosin heads pull away from the actin filament, causing microtears in the muscle fibers. The biochemical injury is characterized by increased plasma enzyme activity and a leaking of enzymes (e.g., creatine kinase) out of the muscle. Soreness typically increases in intensity during the first 24 hours postexercise, peaks in the next 48 hours, then subsides within five to seven days after the workout.',
              ),
              foodCard(
                '9. How Do I Get Rid of These Flabby Arms?',
                ' One of the biggest exercise myths is that you can lose fat in an area of the body by strength training or exercising that specific body part. The truth is that “spot reducing” and “spot toning” do not work, because we cannot dictate from where our bodies will decide to oxidize fat, nor can we change fat into muscle. Doing triceps press-downs will not decrease the amount of fat clients have on the backs of their arms any more than doing crunches will decrease the amount of fat clients have on their stomachs.\nAs your clients age, their skin will become less elastic and thus conform less to their arms. So “flabby arms” are somewhat a product of age. Any exercise that decreases body fat percentage will help your clients lose fat on their arms, just as it will help them lose fat from other areas of the body.',
              ),
              foodCard(
                '10. How Often Should I Work Out/Lift Weights?',
                'According to the American College of Sports Medicine (ACSM), your clients should exercise 20 to 60 minutes, three to five days a week for health/fitness promotion (ACSM 1995). Exercising only three days a week may be enough for previously sedentary clients to improve their fitness, but it will take more exercise to see further improvements. Improvements in aerobic power (VO2 max), cholesterol levels, body composition and cardiovascular health are all augmented the more often you exercise (Duncan et al. 1991; Gettman et al. 1976; Milesis et al. 1976). However, it is important that your clients do not progress too soon or exercise excessively, since both these behaviors can lead to overuse injuries.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget foodCard(String title, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
