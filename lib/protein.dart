import 'package:flutter/material.dart';

class Protein extends StatelessWidget {
  const Protein({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Protein is an essential macronutrient that plays a crucial role in the body\’s structure, function, and overall health.'
                      'It is made up of amino acids, which are the building blocks of muscles, skin, hair, and organs. The body uses protein to repair tissues, build enzymes and hormones, and support immune function.\n'
                      
                    ),
                    TextSpan(
                      text: 'Functions of Protein in the Body:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: '1. Muscle Growth & Repair –\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Essential for building and repairing muscle tissues, especially after exercise.\n\n',
                    ),
                    TextSpan(
                      text: '2. Enzyme Production –\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Helps facilitate biochemical reactions in the body.\n\n',
                    ),
                    TextSpan(
                      text: '3. Hormone Regulation –\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Some hormones, like insulin and growth hormone, are made of protein.\n\n',
                    ),
                    TextSpan(
                      text: '4. Immune System Support –\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Produces antibodies to fight infections.\n\n',
                    ),
                    TextSpan(
                      text: '5. Energy Source –\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: ' Can be used for energy when carbohydrates and fats are not available.\n\n',
                    ),
                    TextSpan(
                      text: '6. Cell Structure & Function –\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Integral part of cell membranes and structural components like collagen and keratin.\n\n',
                    ),
                    TextSpan(
                      text: 'Sources of Protein:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Animal-Based: \n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: ' Meat, fish, eggs, dairy products\n\n',
                    ),
                    TextSpan(
                      text: 'Plant-Based:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: ' Beans, lentils, tofu, quinoa, nuts, and seeds\n\n',
                    ),
                  TextSpan(
                      text: 'Daily Protein Requirements:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'The recommended daily protein intake of 1.2–2.0 grams per kilogram of body weight varies depending on an individual\'s activity level, fitness goals, and overall health. Here\’s a breakdown of what this means and how it applies to different people:\n\n'
                    ),
                    TextSpan(
                      text: 'Sedentary adults:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: '~0.8g per kg of body weight\n\n'
                    ),
                    TextSpan(
                      text: 'Active individuals & athletes:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: '1.2-2.0g per kg of body weight\n\n',
                    ),
                    TextSpan(
                      text: 'Endurance Athletes (Runners, Cyclists, Swimmers, etc.):\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: '1.2–1.6g per kg of body weight\n\n'
                    ),
                    TextSpan(
                      text: 'Strength Athletes (Weightlifters, Bodybuilders, etc.):\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: ' 1.6–2.0g per kg of body weight\n\n',
                    ),
                    TextSpan(
                      text: 'Muscle Gain & Bulking Phase:\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: ' 1.6–2.2g per kg of body weight\n\n',
                    ),
                    TextSpan(
                      text: 'Fat Loss & Cutting Phase (While Preserving Muscle):\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: '1.8–2.2g per kg of body weight\n\n'
                    ),
                     TextSpan(
                      text: 'Factors That Influence Protein Needs:\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Age – \n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: ' Older adults may need more protein to prevent muscle loss.\n\n',
                    ),
                    TextSpan(
                      text: 'Activity Level – \n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: ' Higher intensity workouts require more protein for muscle repair.\n\n',
                    ),
                    TextSpan(
                      text: 'Health Conditions – \n\n',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                    TextSpan(
                      text: 'Certain medical conditions may require adjusted protein intake.\n\n'
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
