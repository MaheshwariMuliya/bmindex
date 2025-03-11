import 'package:flutter/material.dart';

void main() {
  runApp(const Drinkdiet());
}

class Drinkdiet extends StatelessWidget {
  const Drinkdiet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Weight Loss Drinks',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const DrinkListScreen(),
    );
  }
}

class DrinkListScreen extends StatelessWidget {
  const DrinkListScreen({super.key});

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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          DrinkCard(
            image: 'assets/images/img25.png',
            title: 'Vegetable Juices',
            description:
                'Vegetable juices are rich in fiber and nutrients, helping you feel full and reducing food cravings.',
            imageHeight: 200,
          ),
          DrinkCard(
            image: 'assets/images/img26.png',
            title: 'Grape Juice',
            description:
                'Grape juice is loaded with Vitamin C, boosts metabolism, and acts as a natural detoxifier.',
            imageHeight: 250,
          ),
          DrinkCard(
            image: 'assets/images/img27.png',
            title: 'Green Tea',
            description:
                'Green tea is packed with antioxidants and metabolism boosters, aiding in effective weight loss.',
            imageHeight: 250,
          ),
          DrinkCard(
            image: 'assets/images/img28.png',
            title: 'Yoghurt Smoothies',
            description:
                'Yoghurt is rich in calcium and helps burn fat, making it an ideal ingredient for weight loss.',
            imageHeight: 250,
          ),
          DrinkCard(
            image: 'assets/images/img29.png',
            title: 'Water',
            description:
                'Drinking 8-12 glasses of water daily helps flush out toxins and keeps your body hydrated.',
            imageHeight: 250,
          ),
          DrinkCard(
            image: 'assets/images/img18.png',
            title: 'Whey Protein',
            description:
                'Whey protein helps reduce body fat, curb food cravings, and boost metabolism.',
            imageHeight: 180,
          ),
          DrinkCard(
            image: 'assets/images/img30.png',
            title: 'Coconut Water',
            description:
                'Coconut water boosts metabolism, provides energy, and flushes out toxins from the body.',
            imageHeight: 250,
          ),
          DrinkCard(
            image: 'assets/images/img31.png',
            title: 'Black Coffee',
            description:
                'Black coffee boosts metabolism, reduces hunger, and aids in weight loss.',
            imageHeight: 250,
          ),
          DrinkCard(
            image: 'assets/images/img32.png',
            title: 'Skimmed Milk',
            description:
                'Skimmed milk is low in fat and high in calcium, helping break down fat and strengthen muscles.',
            imageHeight: 250,
          ),
          DrinkCard(
            image: 'assets/images/img33.png',
            title: 'Cranberry Juice',
            description:
                'Cranberry juice is rich in antioxidants, prevents water retention, and helps dissolve fats.',
            imageHeight: 250,
          ),
        ],
      ),
    );
  }
}

class DrinkCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double imageHeight;

  const DrinkCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.imageHeight = 150,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              image,
              height: imageHeight,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
