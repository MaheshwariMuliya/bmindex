import 'package:flutter/material.dart';

class Weightloss extends StatelessWidget {
  const Weightloss({super.key});

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Not all calories are created equal. Different foods go through different metabolic pathways in the body. They can have vastly different effects on hunger, hormones, and how many calories we burn. Here are the 20 most weight loss-friendly foods on earth, that are supported by science.\n\n",
              style: TextStyle(fontSize: 18),
            ),
            foodCard(
              '1. Whole Eggs\n\n',
              'Once feared for being high in cholesterol, whole eggs have been making a comeback. New studies show that they don\'t adversely affect blood cholesterol and don\'t cause heart attacks. What\'s more... they are among the best foods you can eat if you need to lose weight. They\'re high in protein, healthy fats, and can make you feel full with a very low amount of calories. One study of 30 overweight women showed that eating eggs for breakfast, instead of bagels, increased satiety and made them eat less for the next 36 hours. Another 8-week study found that eggs for breakfast increased weight loss on a calorie-restricted diet compared to bagels. Eggs are also incredibly nutrient-dense and can help you get all the nutrients you need on a calorie-restricted diet. Almost all the nutrients are found in the yolks.\n\n',
              'assets/images/img34.png',
            ),
            foodCard(
              '2. Leafy Greens\n\n',
              'Leafy greens include kale, spinach, collards, swiss chards, and a few others. They have several properties that make them perfect for a weight loss diet. They are low in both calories and carbohydrates, but loaded with fiber. Eating leafy greens is a great way to increase the volume of your meals without increasing the calories. Numerous studies show that meals and diets with a low energy density make people eat fewer calories overall. Leafy greens are also incredibly nutritious and very high in all sorts of vitamins, minerals, and antioxidants. This includes calcium, which has been shown to aid fat burning in some studies.\n\n',
              'assets/images/img35.png',
            ),
            foodCard(
              '3. Salmon\n\n',
              'Oily fish like salmon is incredibly healthy. It is also very satisfying, keeping you full for many hours with relatively few calories. Salmon is loaded with high-quality protein, healthy fats, and also contains all sorts of important nutrients. Fish, and seafood, in general, supplies a significant amount of iodine. This nutrient is necessary for the proper function of the thyroid, which is important to keep the metabolism running optimally. Studies show that a huge number of people in the world aren\'t getting all the iodine they need. Salmon is also loaded with Omega-3 fatty acids, which have been shown to help reduce inflammation, which is known to play a major role in obesity and metabolic disease. Mackerel, trout, sardines, herring, and other types of oily fish are also excellent.\n\n',
              'assets/images/img36.png',
            ),
            foodCard(
              '4. Cruciferous Vegetables\n\n',
              'Cruciferous vegetables include broccoli, cauliflower, cabbage and brussels sprouts. Like other vegetables, they are high in fiber and tend to be incredibly fulfilling. What\'s more... these types of veggies also tend to contain decent amounts of protein.They\'re not as high in protein as animal foods or legumes, but they\'re high compared to most vegetables.A combination of protein, fiber and low energy density makes cruciferous vegetables the perfect foods to include in your meals if you need to lose weight. They are also highly nutritious, and contain cancer fighting substances (11).\n\n',
              'assets/images/img37.png',
            ),
            foodCard(
              '5. Lean Beef and Chicken Breast\n\n',
              'Meat has been unfairly demonized. It has been blamed for all sorts of health problems, despite no good evidence to back it up. Although processed meat is unhealthy, studies show that unprocessed red meat does NOT raise the risk of heart disease or diabetes (12, 13).According to two big review studies, red meat has only a very weak correlation with cancer in men, and no correlation at all in women (14, 15).The truth is... meat is a weight loss-friendly food, because it\'s high in protein. Protein is the most fulfilling nutrient, by far, and eating a high protein diet can make you burn up to 80 to 100 more calories per day (16, 17, 18). Studies have shown that increasing your protein intake to 25-30% of calories can cut cravings by 60%, reduce desire for late-night snacking by half, and cause weight loss of almost a pound per week... just by adding protein to the diet (19, 20). If you\'re on a low-carb diet, then feel free to eat fatty meats. But if you\re on a moderate- to high carbohydrate diet, then choosing lean meats may be more appropriate.\n\n',
              'assets/images/img38.png',
            ),
            foodCard(
              '6. Boiled Potatoes\n\n',
              'White potatoes seem to have fallen out of favour for some reason. However... they have several properties that make them a perfect food, both for weight loss and optimal health. They contain an incredibly diverse range of nutrients, a little bit of almost everything we need. There have even been accounts of people living on nothing but potatoes alone for extended periods of time.They are particularly high in potassium, a nutrient that most people don\'t get enough of and plays an important role in blood pressure control. On a scale called the Satiety Index, that measures how fulfilling different foods are, white, boiled potatoes scored the highest of all the foods tested (21).What this means is that by eating white, boiled potatoes, you will naturally feel full and eat less of other foods instead. If you boil the potatoes, then allow them to cool for a while, then they will form large amounts of resistant starch, a fiber-like substance that has been shown to have all sorts of health benefits... including weight loss (22). Sweet potatoes, turnips and other root vegetables are also excellent.\n\n',
              'assets/images/img39.png',
            ),
            foodCard(
              '7. Tuna\n\n',
              'Tuna is another low-calorie, high protein food. It is lean fish... so there isn\'t much fat in it. Tuna is popular among bodybuilders and fitness models who are on a cut, because it\'s a great way to keep protein high, with total calories and fat low. If you\'re trying to emphasize protein intake, then make sure to choose tuna canned in water, but not oil.\n\n',
              'assets/images/img40.png',
            ),
            foodCard(
              '8. Beans and Legumes\n\n',
              'Some beans and legumes can be beneficial for weight loss. This includes lentils, black beans, kidney beans and some others. These foods tend to be high in protein and fiber, which are two nutrients that have been shown to lead to satiety. They also tend to contain some resistant starch. The main problem is that a lot of people have problem tolerating legumes. For this reason, it is important to prepare them properly.\n\n',
              'assets/images/img41.png',
            ),
            foodCard(
              '9. Soups\n\n',
              'As mentioned above, meals and diets with a low energy density tend to make people eat fewer calories. Most foods with a low energy density are those that contain lots of water, such as vegetables and fruits. But you can also just add water to your food... by making a soup. Some studies have shown that eating the exact same food, except made in a soup instead of as solid food, makes people feel more satiated and eat significantly fewer calories (23, 24).\n\n',
              'assets/images/img42.png',
            ),
            foodCard(
              '10. Cottage Cheese\n\n',
              'Dairy products tend to be high in protein. One of the best ones is cottage cheese... calorie for calorie, it is mostly just protein with very little carbohydrate and fat. Eating plenty of cottage cheese is a great way to boost your protein intake. It is also very satiating, making you feel full with a relatively low amount of calories. Dairy products are also high in calcium, which has been shown to aid in the fat burning process (25).\n\n',
              'assets/images/img43.png',
            ),
            foodCard(
              '11. Avocados\n\n',
              'Avocados are a unique type of fruit. Whereas most fruit is high in carbs, avocados are loaded with healthy fats. They are particularly high in monounsaturated oleic acid, the same type of fat found in olive oil. Despite being mostly fat, they also contain a lot of water, so they aren\'t as energy dense as you may think. Avocados are perfect as additions to salad, because studies show that the fats in them can increase the nutrient uptake from the vegetables 2.6 to 15-fold (25). They also contain many important nutrients, including fiber and potassium.\n\n',
              'assets/images/img44.png',
            ),
            foodCard(
              '12. Apple Cider Vinegar \n\n',
              'Apple cider vinegar is incredibly popular in the natural health community. It is popular for use in condiments, like dressings or vinaigrettes. Some people even dilute it in water and drink it. Several studies in humans suggest that vinegar can be useful for weight loss. Taking vinegar at the same time as a high-carb meal can increase feelings of fullness and make people eat 200-275 fewer calories for the rest of the day (26, 27). One study in obese individuals also showed that 15 or 30 mL of vinegar per day for 12 weeks caused weight loss of 2.6-3.7 pounds, or 1.2-1.7 kilograms (28). Vinegar has also been shown to reduce blood sugar spikes after meals, which may lead to all sorts of beneficial effects on health in the long term (29, 30).\n\n',
              'assets/images/img45.png',
            ),
            foodCard(
              '13. Nuts',
              'Despite being high in fat, nuts are not inherently fattening. They\'re an excellent snack, containing balanced amounts of protein, fiber and healthy fats. Studies have shown that eating nuts can improve metabolic health and even cause weight loss (31, 32). Population studies have also shown that people who eat nuts tend to be healthier, and leaner, than the people who don\'t (33). Just make sure not to go overboard, as they are still pretty high in calories. If you tend to binge and eat massive amounts of nuts, then it may be best to avoid them.\n\n',
              'assets/images/img46.png',
            ),
            foodCard(
              '14. Some Whole Grains\n\n',
              'Despite grains having gotten a bad rap in recent years, there are some types that are definitely healthy. This includes some whole grains that are loaded with fiber and contain a decent amount of protein as well. Notable examples include oats, brown rice and quinoa. Oats are loaded with beta-glucans, soluble fibers that have been shown to increase satiety and improve metabolic health (34, 35). Rice, both brown and white, can also contain significant amounts of resistant starch, especially if cooked and then allowed to cool afterwards (36). Keep in mind that refined grains are a disaster, and sometimes foods that have "whole grains" on the label are highly processed junk foods that are both harmful and fattening. If you\'re on a very low-carb diet then you\'ll want to avoid grains, because they are high in carbohydrates. But there\'s nothing wrong with eating some of the healthier grains if you can tolerate them and are not on a low-carb diet.\n\n',
              'assets/images/img47.jpg',
            ),
            foodCard(
              '15. Chili Pepper\n\n',
              'Eating chili peppers may be useful on a weight loss diet. They contain a substance called capsaicin, which has been shown to help reduce appetite and increase fat burning in some studies (37, 38, 39). This substance is even sold in supplement form and is a common ingredient in many commercial weight loss supplements. One study showed that eating 1 gram of red chilli pepper reduced appetite and increased fat burning in people who didn\'t regularly eat peppers (40). However, there was no effect in people who were accustomed to eating spicy food, indicating that some sort of tolerance can build up.',
              'assets/images/img48.png',
            ),
            foodCard(
              '16. Fruit\n\n',
              'Most health experts agree that fruit is healthy. Numerous population studies have shown that people who eat the most fruit (and vegetables) tend to be healthier than people who don\'t (41, 42). Of course... correlation does not equal causation, so those studies don\'t prove anything, but fruit do have properties that make them weight loss-friendly. Even though they contain sugar, they have a low energy density and take a while to chew. Plus, the fiber helps prevent the sugar from being released too quickly into the bloodstream. The only people who may want to avoid or minimize fruit are those who are on a very low-carb, ketogenic diet, or have some sort of intolerance to fructose. For the rest of us, fruits can be an effective (and delicious) addition to a weight loss diet.\n\n',
              'assets/images/img49.png',
            ),
            foodCard(
              '17. Grapefruit\n\n',
              'One fruit that deserves to be highlighted is grapefruit, because its effects on weight control have been studied directly. In a study of 91 obese individuals, eating half a fresh grapefruit before meals caused weight loss of 3.5 pounds (1.6 kg) over a period of 12 weeks (43). The grapefruit group also had reductions in insulin resistance, a metabolic abnormality that is implicated in various chronic diseases. So... eating half a grapefruit about a half hour before some of your daily meals may help you feel more satiated and eat fewer overall calories.',
              'assets/images/img50.png',
            ),
            foodCard(
              '18. Chia Seeds\n\n',
              'Chia seeds are among the most nutritious foods on the planet. They do contain 12 grams of carbohydrate per ounce, which is pretty high, but 11 of those grams are fiber. This makes chia seeds a low-carb friendly food, and one of the best sources of fiber in the world (44). Because of all the fiber, chia seeds can absorb up to 11-12 times their weight in water, turning gel-like and expanding in your stomach (45). Although some studies have shown that chia seeds can help reduce appetite, they have not found a statistically significant effect on weight loss (46, 47). However, given their nutrient composition, it makes sense that chia seeds could be a useful part of a weight loss diet.\n\n',
              'assets/images/img51.png',
            ),
            foodCard(
              '19. Coconut Oil\n\n',
              'Not all fats are created equal. Coconut oil is high in fatty acids of a medium length, called Medium Chain Triglycerides (MCTs). These fatty acids have been shown to boost satiety compared to other fats, as well as increase the amount of calories burned (48, 49). There are also two studies, one in women and the other in men, showing that coconut oil led to reduced amounts of belly fat (50, 51). Of course... coconut oil still contains calories, so adding it on top of what you\'re already eating is a bad idea. So this is not about adding coconut oil to your diet, it is about replacing some of your other cooking fats with coconut oil. Extra virgin olive oil is also worth mentioning here, because it is probably the healthiest fat on the planet.\n\n',
              'assets/images/img52.png',
            ),
            foodCard(
              '20. Full-fat yogurt\n\n',
              'Another excellent dairy food is yogurt. yogurt contains probiotic bacteria that can improve the function of your gut. Having a healthy gut may potentially help protect against inflammation and leptin resistance, which is the main hormonal driver of obesity. Just make sure to choose full-fat yogurt... studies show that full-fat dairy, but not low-fat, is associated with a reduced risk of obesity and type 2 diabetes over time (52). Low-fat yogurt is usually loaded with sugar, so it is best to avoid that stuff like the plague.\n\n',
              'assets/images/img53.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget foodCard(String title, String description, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
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
            Image.asset(imagePath),
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