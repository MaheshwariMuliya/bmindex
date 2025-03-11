import 'package:flutter/material.dart';

class TummyFatEdit extends StatelessWidget {
  const TummyFatEdit({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "20 Weight Loss Tips to Reduce Tummy Fat & Lose Belly Weight\n\n",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              foodCard(
                '1. Up your fiber intake:-',
                'Make sure you are taking enough fiber in your daily diet. You need 25-30 mg of fiber daily for your bowel to function in a good state in order to reduce fat from tummy. But do not overdo it, because more than this amount can cause irritation in intestine, resulting in bloated stomach.',
              ),
              foodCard(
                '2. Go easy on in-between meal binging:-',
                'Snacking between meals can make your tummy bigger and flabby Whenever you eat, your stomach\’s juice starts flowing and digestive system starts functioning. So snacking or binging at a time is allowed, but regular snacking leads to fatty belly and dashes your dream of reducing weight from your belly. So go easy on meals to effectively reduce weight from belly.',
              ),
              foodCard(
                '3. Choose lean meat:-',
                'If you like meat, then it is the good news for you. Because meat, eggs and chicken fill you with lots of energy without having to worry about increasing your tummy size or fermentation. Opt for lean version of meat like skinless chicken and egg white to keep the fat away from your stomach. Avoid mutton as it is packed with lots of calories that may hamper in losing weight from the stomach and making it flat.',
              ),
              foodCard(
                '4. Choose fruits and vegetables wisely:-',
                'Go for the veggies and fruits which can help to flush out the toxins from your body and drain the body completely. Go easy on potatoes, jackfruit, dry fruits, mangoes as they may abet in gaining weight around the stomach and making you pot-bellied. Eat blueberries, spinach, grapefruit, bok chow to help you reduce tummy fat.',
              ),
              foodCard(
                '5. Eat slowly to reduce tummy fat:-',
                'Eating in a hurry leads to ingesting air and slowing down the digestive system. Give 30 minutes to eating and chew each morsel well. It will control the amount of food you take and make feel satiated earlier.You must follow this tip to lose fat from your belly and make it flat and slim.',
              ),
              foodCard(
                '6. Drink lots of water:-',
                'We all know that sugar is one of the main culprits for gaining weight around your stomach. So skimping on sugar is a pretty good idea to get flat tummy. Likewise, Salt in excess, leads to water retention around your abdominal areas and runs the risk of making you pot-bellied. So for getting flat and slim belly, stay away from processed food as they are laden with lot of salt. This tip is very important for losing weight from the stomach and getting flat tummy.',
              ),
              foodCard(
                '7. Ban all junk foods from your diet and take a healthy diet:-',
                'Junk foods like pizza, burger, noodles, and pastries have a high caloric value and are too unhealthy. So for getting flat stomach, you have to stay away from them. It is better if you do not keep these foods at home so that you will not be tempted to eat them whenever your mood strikes to eat them. Most junk foods are laden with high amount of processed carbohydrates and sugar, the main cause of bulging and fat tummy. So banish all junk foods from your diet to lose weight from the stomach and get flat tummy. Instead, go for the diet with high concentration of monounsaturated fats(MUFAs) like soybeans, olive oil, canola oil and nuts like avocado, walnuts, peanuts, pistachios and almonds, which help in reducing weight around your belly and aid in making your stomach flat. Stop eating late at night as it causes accumulation of fat around your tummy. Try to eat at least 2 hours before you go to bed to keep the tummy fat away from your body.',
              ),
              foodCard(
                '8. Replace good carbohydrates in place of bad carbohydrates:-',
                'Carbohydrates are a powerhouse of energy and give us power to sustain. Bad carbohydrates like pastries, cake, white bread, biscuits lead to accumulation of fat around your stomach and shatter your dream of getting flat tummy/stomach. Good carbohydrates like brown rice, veggies, fruits, sweet potatoes are beneficial for your body. So take them in order to reduce belly fat. Never ignore this tip to reduce weight from tummy and make your stomach flat and attractive over time.',
              ),
              foodCard(
                '9. Make sure you walk several steps in a day:-',
                'You must have heard about this tip for losing weight and getting flat abs, but you have not given it much importance. But you need to understand that walking helps a lot in reducing tummy fat and making your abs flat. Only 5 minutes of walk a day can translate into 100 calories burn, resulting into 4.5 kgs weight loss in a year. It is beneficial to wear pedometer for keeping track of your walking activity. A US multicenter review of 9 walking programs found that the person wearing pedometer walks a mile extra a day and lose 1 kg of belly weight in ten weeks. Walk whenever even you feel like. Walking 30 minutes after taking food is very beneficial for keeping the stomach fat away. Walking in the morning is very good way to lose stomach fat/weight fast. If your work is sedentary, then go for treadmill task. It will help you lose weight from all over the body including abdominal areas. Follow this tip for losing belly fat and making your tummy flat.',
              ),
              foodCard(
                '10. Breathe properly:-',
                'Breathe from your stomach instead of chest that helps in flushing out toxins from the body. Lie down on your back and put your hand on your stomach, try to inhale deeply into the shoulder, down your shoulder blades, into rib cages and diaphragm and then exhale well to relax. This is an effective natural weight loss tip to reduce belly fat and make your stomach flat. Give it a try!',
              ),
              foodCard(
                '11. Drink lot of water:-',
                'Nothing is healthier than drinking plain water to keep yourself toxin free and aid in your weight loss efforts. Make it a point to drink at least 8-10 glasses of water daily to keep the constipation away and boost the metabolism. It is advisable not to drink water immediately after meal to speed up the digestion. Drinking water after meal can make your stomach fat. Drink water one hour after meal to prevent the tummy fat. Follow this tip to reduce tummy fat and stomach weight naturally in a shorter period of time.',
              ),
              foodCard(
                '12. Sleep properly :-',
                'Sleeping too much or too little can lead to weight gain around your whole body including the belly. Skimping on sleep leads to rise is appetite and affects the insulin sensitivity, thereby leading to weight gain. On the other hand, sleeping a lot can make your body heave and lethargic. A study conducted in Canada with 276 adults, revealed that people who slept 9-10 hours a day gained 1.5 kilos more than those who slept around 8 hours a day, over six years. Never do the mistake of sleeping after a heavy meal, it surely makes your stomach fat and bloated. So kick out this unhealthy habit of taking rest after taking heavy meal. If you are spending too much time in the bed, you must go to doctor as it may be because of some underlying health problems. So sleep well to reduce weight from the stomach and get flat belly naturally.',
              ),
              foodCard(
                '13. Measure your weight quite often:-',
                'Do not forget to measure your weight as your weight may fluctuate, so it is better to measure your weight regularly and feel the change in your body. Take waist to hip ratio i.e circumference of waist divided by circumference of hip. It is a good marker to know if you need to lose weight from your belly. Women/girls should have the ratio of 0.8 or below and men/boys should have 0.9 or less. More than this signals your need to lose extra weight around your stomach.',
              ),
              foodCard(
                '14. Do not drink too many calories :-',
                'We cannot gauge how much calories we imbibe from taking liquids like cold drinks, packaged fruit juices, artificial beverages and alcohol . But remember, all these can add to few kilos to your body. Data from the Harvard Nurses’ health study 2, which had been conducted on 51,603 women, reveals that women who took cold drinks once a week or twice gain around 4-5 kgs over 4 years. So keep track of whatever you are drinking to avoid weight gain. Green tea is an immensely good choice for weight-watchers. Drink green tea twice a day to reduce fat from your belly and make it flat.',
              ),
              foodCard(
                '15. Try to address the underlying stress:-',
                'If you are living under stress, it can have impact on hormones such as adrenaline, corticotrophin and cortisol, that can increase your appetite and make you store more fat around your body including waist and stomach. Normally cortisol peaks in the morning and takes a dip all day long. But a US study has shown that that people facing stress face drop of cortisol in the evening. And they take resort to caloric dense diet, which increases the tummy fat. So whenever stress plagues your mind, then listen to music or go for walk. Try meditation too to ease off the stress. If you are able to de-stress yourself, you are good enough to reduce weight from belly and make it flat.give me a code with image',
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
