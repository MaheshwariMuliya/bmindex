import 'package:flutter/material.dart';

class AgeWeightWidget extends StatefulWidget {
  final Function(int) onChange;
  final String title;
  final int intValue;
  final int min;
  final int max;
  final bool isWeight;

  const AgeWeightWidget({
    super.key,
    required this.onChange,
    required this.title,
    required this.intValue,
    required this.min,
    required this.max,
    this.isWeight = false,
  });

  @override
  State<AgeWeightWidget> createState() => _AgeWeightWidgetState();
}

class _AgeWeightWidgetState extends State<AgeWeightWidget> {
  int counter = 0;
  bool _isKg = true;

  @override
  void initState() {
    super.initState();
    counter = widget.intValue;
  }

  double _convertKgToLbs(int kg) {
    return kg * 2.20462;
  }

  int _convertLbsToKg(double lbs) {
    return (lbs / 2.20462).round();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 30,
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 10),
            if (widget.isWeight)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Unit:"),
                  const SizedBox(width: 10),
                  ToggleButtons(
                    isSelected: [_isKg, !_isKg],
                    onPressed: (index) {
                      setState(() {
                        _isKg = index == 0;
                      });
                    },
                    children: const [
                      Text("kg"),
                      Text("lbs"),
                    ],
                  ),
                ],
              ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                    onTap: () {
                      setState(() {
                        if (counter > widget.min) {
                          counter--;
                        }
                      });
                      widget.onChange(counter);
                    },
                  ),
                  const SizedBox(width: 8),
                  Text(
                    widget.isWeight
                        ? (_isKg
                            ? "$counter kg"
                            : "${_convertKgToLbs(counter).toStringAsFixed(1)} lbs")
                        : "$counter",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  InkWell(
                    child: const CircleAvatar(
                      radius: 12,
                      backgroundColor:Colors.blue,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    onTap: () {
                      setState(() {
                        if (counter < widget.max) {
                          counter++;
                        }
                      });
                      widget.onChange(counter);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
