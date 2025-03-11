import 'package:flutter/material.dart';

class Muscle extends StatelessWidget {
  const Muscle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '  FLEX FITNESS',
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
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 16, color: Colors.black),
            children: [
              TextSpan(
                text: '1) HIGH CALORIES = ANABOLIC STATE\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
              TextSpan(
                text: 'One of the most overlooked factors in bodybuilding is consuming enough protein but not eating enough calories per day. You\'ve always heard that your body needs protein to grow and this is true. However, adequate protein does not always entail growth. You need to consume adequate calories also. The truth is, if you don\'t consume enough calories, then you\'re not growing. A good rule of thumb is to take your bodyweight and multiply this by 10 or 12 depending on how in shape you are. Then add on 1000-1500 calories per day. I once read that Jay Cutler got big by eating small meals every hour and half. Although he was eating smaller meals, his total caloric intake was above his daily caloric expenditure putting his body in an anabolic state.\n\n',
              ),
              TextSpan(
                text: '2) EAT PLENTY OF CARBOHYDRATES\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
              TextSpan(
                text: 'Carbohydrates are needed to fuel exercise. The storage form of carbohydrates is glycogen. The idea here is to super saturate glycogen levels so that the body never has to dip into protein for energy production. The higher the level of carbs in the body, the more likely you are going to remain in an anabolic environment. Carbs also play a role in the release of insulin. As you know, insulin is the body\'s most potent anabolic hormone. It promotes gluconeogenesis, protein synthesis, and the formation of adipocytes. In short, the release of insulin is required to promote an anabolic environment and carbs help by releasing insulin.\n\n',
              ),
              TextSpan(
                text: '3) EAT PLENTY OF PROTEIN\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
              TextSpan(
                text: 'Let\'s face it, muscle is protein and protein is composed of amino acids. You can\'t build big muscles without an adequate supply of protein. Think of building muscle as building a castle with lego blocks. If you don\'t have the pieces to start with then you cannot build the castle. Eating enough protein should be a no-brainer but for those who don\'t know, one should consume anywhere between one to two grams of protein per pound of bodyweight. So a bodybuilder who weighed 200 lbs would need about 200 grams of protein per day. The best way to do this is to break the supply of protein into smaller servings throughout the day for better absorption and assimilation. In short, eat your protein and eat good kinds such as beef, chicken, fish, whey, and egg whites.\n\n',
              ),
              TextSpan(
                text: '4) EAT MULTIPLE MEALS\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
              TextSpan(
                text: 'Since you\'re now eating 4000 calories per day, your next best bet would be to eat 6 meals a day. Although this may seem like a lot, it really isn\'t. Do the math. If you divide 4000 calories into 6 smaller meals a day, then each meal will consist of approximately 660 calories. Trust me when I say that 660 calories isn\'t a lot. Although it takes a lot of discipline, eating smaller and more frequent meals will pay off in the end. Another reason to eat smaller meals is for the release of insulin. When you consume food, your blood glucose levels will rise. To counteract this, your body will release insulin to lower blood glucose levels to help keep the body in a state of homeostasis. As you now know, insulin is the body\'s most anabolic hormone. The more, the better. So basically, you want as much insulin secretion by the pancreas as possible. After all, you want to be big, right?\n\n',
              ),
              TextSpan(
                text: '5) EAT ENOUGH GOOD FATS\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
              TextSpan(
                text: 'One mistake wannabe lifters make is to not eat enough good fats. When I first began lifting and eating seriously, I would try my best to steer away from fats. Little did I know that fats were actually important in growth. One good thing to know about good fats is that there is a direct relationship between fat and testosterone levels. A perfect example of this is when bodybuilders diet down for a show, so to speak. They are limiting their caloric and fat intake to achieve that stage condition. However, when they are on this restrictive diet, it is impossible for them to grow.\n\n',
              ),
              TextSpan(
                text: '6) EAT A GOOD PREWORKOUT MEAL\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
              TextSpan(
                text: 'The best thing to consume before a workout is a meal consisting of slow burning carbs such as pasta and rice. The reason is that slow burning carbs take longer to convert into glucose thus keeping blood sugar levels relatively consistent. This keeps your body from having an energy crashing allowing you to train longer and harder. Be sure to combine this meal with a healthy serving of good protein as well to maximize gains.\n\n',
              ),
              TextSpan(
                text: '7) CONSUME A HIGH QUALITY POSTWORKOUT MEAL\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
              TextSpan(
                text: 'The meal right after you train should be high in fast burning carbs and protein. The ideal candidate for this would be a protein shake coupled with some form of sugar. Personally, I prefer Gatorade mixed with creatine and strawberry Ny-Tro Pro 40. When you train, you put your body in a catabolic state. You destroy it so that it can build itself back bigger and stronger.\n\n',
              ),
              TextSpan(
                text: '8) DRINK PLENTY OF WATER\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
              TextSpan(
                text: 'One of the most overlooked factors in exercise is adequate water consumption. This should be a no-brainer since water comprises up to 70% of the body and if you\'re dehydrated, your muscle size suffers as well. I believe that one pound of muscle can hold up to three pounds of water. Now if you add it all up, that\'s a lot of size.\n\n',
              ),
              TextSpan(
                text: '9) USE SUPPLEMENTS\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
              TextSpan(
                text: 'If you can afford to use supplements, then by all means do so. Why? Because they work! However, I would stick with the basics such as protein powders, creatine, glutamine, joint formulas, and multi-vitamins. The bottom line concerning these supplements is that they work provided that you work.\n\n',
              ),
              TextSpan(
                text: '10) REST\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
              TextSpan(
                text: 'The number one overlooked factor in building a better body is rest. If you don\'t rest, then how can your muscles grow? Our bodies need the stimulus to grow such as intense training. Once this happens, our bodies are essentially "broken down." Afterwards, it needs the proper nutrients and recovery time to grow bigger and stronger so that it can be broken down again. So if you\'re not resting any, then I would suggest you set aside a day or two of rest each week. And remember, rest days are rest days. Nothing more, nothing less.\n\n',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
