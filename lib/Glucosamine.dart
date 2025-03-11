import 'package:flutter/material.dart';

void main() {
  runApp(const GlucosamineApp());
}

class GlucosamineApp extends StatelessWidget {
  const GlucosamineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Glucosamine Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GlucosamineScreen(),
    );
  }
}

class GlucosamineScreen extends StatelessWidget {
  const GlucosamineScreen({super.key});

  final List<Map<String, dynamic>> glucosamineDetails = const [
    {
      'title': 'Chemical Structure & Forms\n\n',
      'details': [
        {'subTitle': 'Molecular Formula', 'description': 'C₆H₁₃NO₅'},
        {'subTitle': 'Glucosamine Sulfate', 'description': 'Most commonly used in supplements, linked to joint repair and anti-inflammatory effects.\n\n'},
        {'subTitle': 'Glucosamine Hydrochloride (HCl)', 'description': 'Higher purity, but less evidence supporting its effectiveness for arthritis.\n\n'},
        {'subTitle': 'N-Acetyl Glucosamine (NAG)', 'description': 'Less common, used for gut health and autoimmune conditions.\n\n'},
      ],
    },
    {
      'title': 'Functions & Benefits\n\n',
      'details': [
        {'subTitle': 'Supports Joint Health', 'description': 'Maintains cartilage integrity and reduces wear and tear.\n\n'},
        {'subTitle': 'Reduces Inflammation', 'description': 'Helps manage symptoms of osteoarthritis and rheumatoid arthritis.\n\n'},
        {'subTitle': 'Aids Cartilage Repair', 'description': 'Stimulates the production of proteoglycans and collagen in joints.\n\n'},
        {'subTitle': 'Enhances Joint Mobility', 'description': 'Improves flexibility and reduces stiffness in aging individuals.\n\n'},
        {'subTitle': 'Supports Gut Health', 'description': 'N-Acetyl Glucosamine (NAG) is beneficial for conditions like Crohn’s disease.\n\n'},
      ],
    },
    {
      'title': 'Glucosamine Supplementation\n\n',
      'details': [
        {'subTitle': 'Dosage', 'description': '1,500 mg/day (divided into 500 mg doses) for joint health.\n\n'},
        {'subTitle': 'Best Taken With', 'description': 'Meals to improve absorption.\n\n'},
        {'subTitle': 'Common Combinations', 'description': 'Often combined with Chondroitin, MSM (Methylsulfonylmethane), and Omega-3s for enhanced joint support.\n\n'},
      ],
    },
    {
      'title': 'Potential Side Effects & Risks\n\n',
      'details': [
        {'subTitle': 'Generally Safe', 'description': 'When taken as recommended, it has minimal side effects.\n\n'},
        {'subTitle': 'Mild Side Effects', 'description': 'Nausea, heartburn, diarrhea, drowsiness.\n\n'},
        {'subTitle': 'Allergy Warning', 'description': 'Shellfish-derived glucosamine may trigger allergic reactions.\n\n'},
        {'subTitle': 'Diabetes Concerns', 'description': 'Some studies suggest glucosamine might slightly affect blood sugar levels, but evidence is inconclusive.\n\n'},
        {'subTitle': 'Consult a Doctor', 'description': 'If pregnant, diabetic, or taking blood thinners.\n\n'},
      ],
    },
  ];

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: glucosamineDetails.map((section) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    elevation: 4,
                    child: ExpansionTile(
                      title: Text(
                        section['title']!,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      children: [
                        for (var detail in section['details'])
                          ListTile(
                            title: Text(
                              detail['subTitle']!,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            subtitle: Text(detail['description']!, style: const TextStyle(fontSize: 14)),
                          ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
