import 'package:flutter/material.dart';

class Vegdiet extends StatelessWidget {
  const Vegdiet({super.key});

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
                "Vegetarian Diet \n\n",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              foodCard(
                'What Is a Vegetarian Diet?',
                'A vegetarian diet consists of eating plant-based foods along with moderate amounts of eggs and dairy (but no meat). The staples include fresh or cooked veggies, fruit, nuts, seeds, whole grains, and legumes. Vegetarian diets are rich in fiber, vitamins, and antioxidants but may lack certain nutrients like vitamin B12 and zinc. The effectiveness of a vegetarian diet depends on the specific foods someone chooses to eat.',
              ),
              foodCard(
                '1. Quinoa',
                'Quinoa is gluten-free, high in protein, and packed with fiber, B vitamins, and iron. One-fourth cup of dry quinoa has only 2.5 grams of fat, mostly heart-healthy monounsaturated fat. It can be mixed with vegetables for a savory dish or added to baked goods for extra protein and fiber.',
              ),
              foodCard(
                '2. Black Beans',
                'Black beans are nutrient-dense, high in fiber, protein, calcium, and folic acid. They help digestion, lower cholesterol, and provide long-lasting fullness. Use them in salads, burgers, or even brownies for a health boost.',
              ),
              foodCard(
                '3. Garlic',
                'Garlic enhances flavor without extra salt or oil. It contains antioxidants that may prevent Alzheimer’s and works as a natural antibiotic to shorten colds and flu.',
              ),
              foodCard(
                '4. Coconut Oil',
                'Coconut oil contains Medium Chain Triglycerides (MCTs) that are quickly converted into energy. It helps with metabolism and provides antibacterial properties.',
              ),
              foodCard(
                '5. Berries (Frozen or Fresh)',
                'Blueberries, blackberries, raspberries, goji berries, and mulberries are low in calories but rich in antioxidants and vitamin C. Berries aid memory, improve energy levels, and assist with weight loss.',
              ),
              foodCard(
                '1. High in Antioxidants and Vitamins',
                'Plant-based foods are rich in antioxidants, vitamins C, E, and A, and minerals like magnesium and potassium. They boost immunity, slow aging, protect against diseases, and prevent nutritional deficiencies.',
              ),
              foodCard(
                '2. Can Help Support Heart Health',
                'Plant-based foods lower inflammation and provide dietary fiber. Research links high-fiber diets to reduced cholesterol, heart disease, and diabetes. A plant-based diet is associated with a significantly lower risk of coronary heart disease.',
              ),
              foodCard(
                '3. May Help with Weight Loss',
                'Vegetarian diets are low in calories and high in volume, keeping you full longer. People consuming more plant-based foods tend to have lower body mass index (BMI) and a reduced risk of obesity-related complications.',
              ),
              foodCard(
                '4. Provides More Digestive Enzymes',
                'Raw foods contain essential enzymes needed for digestion, which can be lost in high-temperature cooking. Raw plant foods may contribute to higher energy levels and better moods.',
              ),
              foodCard(
                '5. Eliminates Additives and Byproducts Found in Cooked Meat',
                'Processed and high-temperature-cooked meats produce harmful compounds linked to cancer. A vegetarian diet eliminates such risks while providing plant-based proteins with additional fiber and antioxidants.',
              ),
              foodCard(
                '6. Is Sustainable and Helpful for the Environment',
                'Plant-based diets reduce carbon footprints and require fewer natural resources than animal-based diets. Producing plant foods is more environmentally friendly and sustainable.',
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
