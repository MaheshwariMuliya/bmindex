import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

class GenderWidget extends StatefulWidget {
  final Function(int) onChange;

  GenderWidget({required this.onChange});

  @override
  _GenderWidgetState createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  int selectedGender = 0;

  @override
  Widget build(BuildContext context) {
    double imageSize = MediaQuery.of(context).size.width * 0.15;

    return Column(
      children: [
        const Text('Gender', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChoiceChip3D(
              onSelected: () {
                setState(() {
                  selectedGender = 0;
                  widget.onChange(0);
                });
              },
              onUnSelected: () {},
              selected: selectedGender == 0,
              style: ChoiceChip3DStyle(
                topColor: selectedGender == 0 ? const Color.fromARGB(255, 229, 229, 238) : Colors.white,
                backColor: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/man.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  const Text("Male", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
            const SizedBox(width: 15),
            ChoiceChip3D(
              onSelected: () {
                setState(() {
                  selectedGender = 1;
                  widget.onChange(1);
                });
              },
              onUnSelected: () {},
              selected: selectedGender == 1,
              style: ChoiceChip3DStyle(
                topColor: selectedGender == 1 ? Colors.blue.shade100 : Colors.white,
                backColor: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/women.png',
                    width: 80,
                    height: 50,
                  ),
                  const SizedBox(height: 10),
                  const Text("Female", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
