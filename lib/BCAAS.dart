import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'BCAAs Information',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BCAAsInfoPage(),
    );
  }
}

class BCAAsInfoPage extends StatelessWidget {
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.white, fontSize: 16),
              children: [
                TextSpan(
                  text: 'BCAAs: An Overview\n\n',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextSpan(
                  text:
                      'It\'s well established that branched-chain amino acids (particularly leucine) stimulate protein synthesis, and might do so to a greater extent than a normal protein on its own. BCAAs also increase synthesis of the cellular machinery responsible for carrying out the process of protein synthesis.\n\n',
                ),
                TextSpan(
                  text: 'The Function of BCAAs\n\n',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextSpan(
                  text:
                      'They act as nitrogen carriers which assist the muscles in synthesizing other amino acids needed for anabolic muscle action. In simpler terms, BCAAs combine simpler amino acids to form complex whole muscle tissue. In this action, BCAAs stimulate production of insulin, the main function of which is to allow circulating blood sugar to be taken up by the muscle cells and used as a source of energy. This insulin production promotes amino acid uptake by the muscle.\n\n',
                ),
                TextSpan(
                  text: 'How Do BCAAs Work?\n\n',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextSpan(
                  text:
                      'During intense weight training, the body is normally in a highly catabolic condition. At this time, glycogen stores are being rapidly depleted and the liver must synthesize glucose by converting L-Alanine. Alanine makes up over half of the amino acid content released from muscles during exercise. The release of BCAAs is generally recognized as the signal to the body to stop protein synthesis in the muscles, especially during times of stress. Providing Branch Chain Amino Acids during these times may profoundly affect this signal and allow protein synthesis to continue onward.\n\n',
                ),
                TextSpan(
                  text: 'Important Co-Factors in BCAA Supplementation\n\n',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextSpan(
                  text:
                      'As with most nutrition, many bodybuilders overlook the importance of combining and including co-factors when supplementing. Below is a list of supplements that play a part in increasing the effectiveness of BCAA supplementation.\n\n',
                ),
                TextSpan(
                  text: 'Chromium\n\n',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextSpan(
                  text:
                      'The most desired form is chromium picolinate, which functions to increase the effectiveness of insulin, a hormone composed of 91 amino acids, manufactured in the beta cells of the pancreas. Insulin is the most essential link in the muscle-building chain. Chromium enhances the rate at which protein is synthesized by the body and promotes the intracellular uptake of free amino acids from the blood and assimilation by the cells. It retards the rate of protein degradation by the body within the cells. This is an absolute must to include in a quality Branch Chain Amino formula.\n\n',
                ),
                TextSpan(
                  text: 'BCAAs Effect on Hormones\n\n',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextSpan(
                  text:
                      'It is not known how changes in dietary BCAA intake affect patterns of hormone secretion. The increase in leucine appearance is consistent with the decline in insulin, because insulin normally suppresses protein breakdown, whereas increased glucagon has a catabolic effect on BCAAs.\n',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
