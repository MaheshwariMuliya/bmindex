import 'dart:math';
import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'gender_widget.dart';
import 'height_widget.dart';
import 'age_weight_widget.dart';
import 'score_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _gender = 0;
  int _height = 150;
  int _age = 30;
  int _weight = 50;
  bool _isFinished = false;
  double _bmiScore = 0;

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
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Card(
            elevation: 12,
            shape: const RoundedRectangleBorder(),
            child: Column(
              children: [
                GenderWidget(
                  onChange: (genderVal) {
                    setState(() {
                      _gender = genderVal;
                    });
                  },
                ),
                HeightWidget(
                  onChange: (heightVal) {
                    setState(() {
                      _height = heightVal;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: AgeWeightWidget(
                        onChange: (ageVal) {
                          setState(() {
                            _age = ageVal;
                          });
                        },
                        title: 'Age',
                        intValue: _age,
                        min: 0,
                        max: 100,
                      ),
                    ),
                    Expanded(
                      child: AgeWeightWidget(
                        onChange: (weightVal) {
                          setState(() {
                            _weight = weightVal;
                          });
                        },
                        title: 'Weight (KG)',
                        intValue: _weight,
                        min: 0,
                        max: 100,
                        isWeight: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  child: SwipeableButtonView(
                    buttonText: 'CALCULATE BMI',
                    buttonWidget: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.blue,
                    ),
                    activeColor: Colors.blue,
                    isFinished: _isFinished,
                    onWaitingProcess: () {
                      calculateBMI();
                      Future.delayed(const Duration(seconds: 2), () {
                        setState(() {
                          _isFinished = true;
                        });
                      });
                    },
                    onFinish: () async {
                      await saveBMIData();
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: ScoreScreen(bmiScore: _bmiScore, age: _age),
                        ),
                      );
                      setState(() {
                        _isFinished = false;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculateBMI() {
    _bmiScore = _weight / pow(_height / 100, 2);
  }

  Future<void> saveBMIData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String bmiHistory = "BMI: ${_bmiScore.toStringAsFixed(2)}, Age: $_age, Status: ${getBmiStatus()}, Interpretation: ${getBmiInterpretation()}";

    List<String> historicalData = prefs.getStringList('bmiHistory') ?? [];

    if (!historicalData.contains(bmiHistory)) {
      historicalData.insert(0, bmiHistory); 
    }

    await prefs.setStringList('bmiHistory', historicalData);
  }

  String getBmiStatus() {
    if (_bmiScore > 30) {
      return "Obese";
    } else if (_bmiScore >= 25) {
      return "Overweight";
    } else if (_bmiScore >= 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getBmiInterpretation() {
    if (_bmiScore > 30) {
      return "Please work to reduce obesity";
    } else if (_bmiScore >= 25) {
      return "Do regular exercise & reduce the weight";
    } else if (_bmiScore >= 18.5) {
      return "Enjoy, You are fit";
    } else {
      return "Try to increase the weight";
    }
  }
}
