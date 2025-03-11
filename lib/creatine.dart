import 'package:flutter/material.dart';

void main() {
  runApp(const CreatineApp());
}

class CreatineApp extends StatelessWidget {
  const CreatineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Creatine Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CreatineScreen(),
    );
  }
}

class CreatineScreen extends StatelessWidget {
  const CreatineScreen({super.key});

  final List<Map<String, String>> creatineInfo = const [
    {
      'title': 'How Does Creatine Work?',
      'description': 'Creatine helps to regenerate a molecule called adenosine triphosphate (ATP), your body’s main source of energy. When creatine stores in your muscles are depleted, the production of ATP comes to a screeching halt and your energy is dramatically decreased. Supplementing with creatine increases the available fuel to power ATP, which can increase muscle strength, size and power output.'
    },
    {
      'title': 'Who Can Benefit?',
      'description': 'Supplementing with creatine is not just for bodybuilders; several types of athletes can benefit like sprinters, swimmers, and soccer players. Creatine supplementation also can help increase your strength, power, and muscle size making it useful for sports like football and hockey. But, creatine supplementation isn’t effective for exercise and events lasting more than 90 seconds, for example long-distance running.'
    },
    {
      'title': 'How to Take Creatine',
      'description': 'Creatine is supplemented through one of two ways. The first way is called ‘loading.’ The loading phase requires taking 20 g of creatine in split doses for 5-7 days. Following the loading phase, 3-5 g of creatine is supplemented daily. This is called the maintenance phase. The idea of loading creatine is to saturate the muscle cells with creatine resulting in faster results. Supplementing with 3-5 g, without the loading phase, is the other method. Choosing this route will get you the same results as loading, but it will take you longer to experience the full benefits of creatine. Regardless of the method you choose, cycling creatine is not needed. Cycling creatine means going “on” and “off” creatine every couple of weeks. People who recommend creatine cycling claim that it will maximize the effects of creatine and is needed to give your body a break. But the truth is, creatine cycling will not give you any added benefit over not cycling creatine.'
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
        backgroundColor: Colors.blue,
        shadowColor: const Color.fromARGB(255, 206, 203, 203).withOpacity(0.5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: creatineInfo.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: creatineInfo[index]['title']! + '\n',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                    ),
                    TextSpan(
                      text: creatineInfo[index]['description']!,
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
