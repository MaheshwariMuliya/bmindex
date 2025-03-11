import 'package:flutter/material.dart';

class Vitamins extends StatelessWidget {
  const Vitamins({super.key});

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
        backgroundColor:Colors.blue,
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
              SizedBox(height: 16),
              Image.asset('assets/images/img24.png'),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: '1. Vitamin D \n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Function:\n\n Helps the body absorb calcium and phosphorus, essential for strong bones and teeth.\nSupports immune function and muscle health.\n Plays a role in mood regulation and may help prevent depression.\n\n'
                      'Sources:\n\n Sunlight (your skin produces vitamin D when exposed to the sun).\nFatty fish (salmon, mackerel, tuna).\nFortified dairy products and plant-based milk.\nEgg yolks.\n\n'
                      'Deficiency Symptoms:\n\nWeak or brittle bones (osteoporosis or rickets in children).\nFatigue and muscle weakness.\nIncreased risk of infections.\nMood disorders, including depression.\n\n'
                    ),
                    TextSpan(
                      text: '2. Vitamin C:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Function:\n\nStrengthens the immune system.\nSupports collagen production for healthy skin, joints, and blood vessels.\nActs as an antioxidant, protecting cells from damage.\nHelps in wound healing and enhances iron absorption.\n\n'
                        'Sources:\n\nCitrus fruits (oranges, lemons, limes, grapefruit).\nStrawberries, kiwi, and papaya.\nBell peppers, broccoli, and tomatoes.\n\n'
                        'Deficiency Symptoms:\n\nFrequent colds or infections.\nSlow wound healing.\nBleeding gums and weakened teeth (scurvy in severe cases).\nFatigue and rough, dry skin.\n\n',
                    ),
                    TextSpan(
                      text: '3. Vitamin A:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Function:\n\nSupports healthy vision and eye function.\nStrengthens the immune system.\nPromotes healthy skin and cell growth.\nImportant for reproductive health and fetal development.\n\n'
                      'Sources:\n\nOrange and yellow vegetables (carrots, sweet potatoes, pumpkin).\nLeafy greens (spinach, kale).\nLiver and fish oils.\nDairy products and eggs.\n\n'
                       'Deficiency Symptoms:\n\nNight blindness or difficulty seeing in low light.\nDry eyes and skin problems.\nIncreased susceptibility to infections.\nDelayed growth and development in children.\n\n',
                    ),
                    TextSpan(
                      text: '4. Vitamin B12:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Function:\n\nEssential for red blood cell formation and oxygen transport.\nSupports nerve function and brain health.\nHelps in DNA synthesis and energy production.\n\n'
                      'Sources:\n\nAnimal products (meat, poultry, fish, eggs, dairy).\nFortified plant-based milk and cereals (for vegetarians/vegans).\nNutritional yeast (if fortified with B12).\n\n'
                      'Deficiency Symptoms:\n\nFatigue and weakness.\nTingling or numbness in hands and feet.\nMemory problems and difficulty concentrating.\nAnemia and pale skin.\n\n',
                    ),
                    TextSpan(
                      text: '5. Vitamin E:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20), 
                    ),
                    TextSpan(
                      text: 'Function:\n\nActs as a powerful antioxidant, protecting cells from oxidative stress.\nSupports healthy skin and reduces signs of aging.\nHelps maintain a healthy immune system.\nSupports cardiovascular health by preventing blood clot formation.\n\n'
                      'Sources:\n\nNuts and seeds (almonds, sunflower seeds, hazelnuts).\nPlant oils (sunflower oil, olive oil).\nSpinach, avocado, and broccoli.\n'
                      'Deficiency Symptoms:\n\nMuscle weakness and difficulty coordinating movements.\nVision problems.\nWeakened immune function.\nIncreased oxidative stress leading to faster aging.\n\n',
                    ),
                    TextSpan(
                      text: 'B Vitamins: B6, Folate (B9), and B12\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'B vitamins are essential for energy production, brain function, and overall well-being. Here’s a closer look at Vitamin B6, Folate (B9), and B12, their benefits, food sources, and symptoms of deficiency.\n',
                    ),
                    TextSpan(
                      text: '1. Vitamin B6 (Pyridoxine):\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20), 
                    ),
                    TextSpan(
                      text: 'Functions & Benefits:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                     TextSpan(
                      text: 'Supports brain health by producing neurotransmitters like serotonin and dopamine, which regulate mood.\nHelps in red blood cell production.\nAids in protein metabolism and energy production.\nSupports immune function.\n\n'
                    ),
                    TextSpan(
                      text: 'Food Sources:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Poultry (chicken, turkey).\nFish (salmon, tuna).\nBananas, potatoes, and spinach.\nFortified cereals and whole grains.\nNuts and seeds.\n\n'
                    ),
                  TextSpan(
                      text: 'Deficiency Symptoms:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Fatigue and irritability.\nDepression and mood changes.\nWeakened immune function.\nCracks or sores around the mouth.\nNumbness or tingling in hands and feet.\n\n'
                    ),
                    TextSpan(
                      text: '2. Folate (Vitamin B9):\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20), 
                    ),
                    TextSpan(
                      text: 'Functions & Benefits:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                     TextSpan(
                      text: 'Essential for DNA synthesis and cell growth, especially important during pregnancy for fetal development.\Helps prevent neural tube defects in babies.\nSupports red blood cell production and prevents anemia.\Plays a role in heart health by reducing homocysteine levels (high levels can increase heart disease risk).\n\n'
                    ),
                    TextSpan(
                      text: 'Food Sources:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Leafy greens (spinach, kale, lettuce).\nLegumes (lentils, chickpeas, black beans).Citrus fruits (oranges, lemons).\nFortified cereals and grains.\nAvocados and asparagus.\n\n'
                    ),
                  TextSpan(
                      text: 'Deficiency Symptoms:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Fatigue and weakness.\nAnemia (pale skin, dizziness).\nMouth sores and tongue swelling.\nPoor fetal development in pregnant women (neural tube defects like spina bifida).\n\n'
                    ),
                    TextSpan(
                      text: '3. Vitamin B12 (Cobalamin):\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20), 
                    ),
                    TextSpan(
                      text: 'Functions & Benefits:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                     TextSpan(
                      text: 'Helps in red blood cell formation and prevents anemia.\nSupports brain and nervous system health.\nEssential for DNA synthesis and energy production.\nPlays a role in mood regulation and cognitive function.\n\n'
                    ),
                    TextSpan(
                      text: 'Food Sources:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Animal products (meat, poultry, fish, eggs, dairy).\nFortified plant-based milk and cereals (for vegetarians/vegans).\nNutritional yeast (if fortified with B12).\n\n'
                    ),
                  TextSpan(
                      text: 'Deficiency Symptoms:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Fatigue and weakness.\nTingling or numbness in hands and feet (nerve damage).\nMemory problems and difficulty concentrating.\nAnemia and pale skin.\nMood changes or depression.\n\n'
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
