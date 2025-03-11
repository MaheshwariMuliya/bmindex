import 'package:flutter/material.dart';

class Foods extends StatelessWidget {
  const Foods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' FLEX FITNESS',
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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          FoodItem(
            title: 'Beef (Grass-Fed)',
            description:
                'Rich in protein, zinc, B vitamins, and iron. Grass-fed beef has higher levels of CLA, which helps shed body fat and build lean muscle.',
            icon: Icons.food_bank,
            color: Colors.red,
          ),
          FoodItem(
            title: 'Beets',
            description:
                'A good source of betaine, which enhances liver and joint repair. Beets also boost NO levels, improving energy and recovery.',
            icon: Icons.eco,
            color: Colors.purple,
          ),
          FoodItem(
            title: 'Brown Rice',
            description:
                'A slow-digesting whole grain that provides long-lasting energy. It also helps boost growth hormone levels for lean muscle growth.',
            icon: Icons.rice_bowl,
            color: Colors.brown,
          ),
          FoodItem(
            title: 'Oranges',
            description:
                'Packed with vitamin C, oranges help boost muscle growth, strength, and endurance, especially when eaten before workouts.',
            icon: Icons.local_drink,
            color: Colors.orange,
          ),
          FoodItem(
            title: 'Cantaloupe',
            description:
                'Low in fructose, this melon is a fast-digesting carb. Ideal for post-workout recovery or as a morning snack after fasting.',
            icon: Icons.water_drop,
            color: Colors.yellow,
          ),
          FoodItem(
            title: 'Cottage Cheese (Organic)',
            description:
                'Rich in casein protein, it prevents muscle breakdown during fasting periods, making it perfect before bed.',
            icon: Icons.breakfast_dining,
            color: Colors.blueGrey,
          ),
          FoodItem(
            title: 'Eggs',
            description:
                'The perfect protein source. Egg yolks contain cholesterol that supports muscle growth without increasing bad LDL cholesterol.',
            icon: Icons.egg,
            color: Colors.amber,
          ),
          FoodItem(
            title: 'Milk (Organic)',
            description:
                'Contains whey and casein proteins, along with glutamine. Organic milk has 70% more omega-3 fatty acids than conventional milk.',
            icon: Icons.local_drink,
            color: Colors.white,
          ),
          FoodItem(
            title: 'Quinoa',
            description:
                'A complete protein and slow-digesting carb. Quinoa boosts IGF-1 levels, which are crucial for muscle and strength gains.',
            icon: Icons.grain,
            color: Colors.green,
          ),
          FoodItem(
            title: 'Wonka Pixy Stix',
            description:
                'Contains dextrose, which goes straight into your bloodstream for fast post-workout recovery.',
            icon: Icons.local_cafe,
            color: Colors.pink,
          ),
          FoodItem(
            title: 'Spinach',
            description:
                'A good source of glutamine, which supports muscle growth. Spinach also increases strength and endurance.',
            icon: Icons.forest,
            color: Colors.green,
          ),
          FoodItem(
            title: 'Apples',
            description:
                'Polyphenols in apples increase muscle strength, prevent fatigue, and enhance fat burning. Great as a pre-workout snack.',
            icon: Icons.apple,
            color: Colors.red,
          ),
          FoodItem(
            title: 'Greek Yogurt',
            description:
                'High in protein (20g per cup) and low in carbs (9g per cup). A great source of casein protein for muscle recovery.',
            icon: Icons.icecream,
            color: Colors.white,
          ),
          FoodItem(
            title: 'Ezekiel 4:6 Bread',
            description:
                'Made from organic sprouted whole grains. A complete protein source with all nine essential amino acids.',
            icon: Icons.bakery_dining,
            color: Colors.brown,
          ),
          FoodItem(
            title: 'Wheat Germ',
            description:
                'Rich in zinc, iron, selenium, and B vitamins. A great source of slow-digesting carbs and quality protein.',
            icon: Icons.grass,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const FoodItem({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
