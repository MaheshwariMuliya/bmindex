import 'package:flutter/material.dart';

class HeightWidget extends StatefulWidget {
  final Function(int) onChange;

  const HeightWidget({super.key, required this.onChange});

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  int _heightCm = 150; 
  double _heightFt = 4.92; 
  double _heightIn = 59.06; 

  void _updateFeetInchesFromCm(int cm) {
    double inches = cm / 2.54;
    _heightFt = (inches / 12);
    _heightIn = inches;
  }

  void _updateCmInchesFromFt(double ft) {
    double inches = ft * 12;
    _heightCm = (inches * 2.54).round();
    _heightIn = inches;
  }

  void _updateCmFeetFromIn(double inches) {
    _heightCm = (inches * 2.54).round();
    _heightFt = inches / 12;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 12,
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: [
            const Text(
              "Height",
              style: TextStyle(fontSize: 16, color: Color(0xFF1A1A2E)),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("cm:", style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                SizedBox(
                  width: 100,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      int cm = int.tryParse(value) ?? 150;
                      setState(() {
                        _heightCm = cm;
                        _updateFeetInchesFromCm(cm);
                      });
                      widget.onChange(_heightCm);
                    },
                    controller: TextEditingController(text: _heightCm.toString()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("ft:", style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                SizedBox(
                  width: 100,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      double ft = double.tryParse(value) ?? 4.92;
                      setState(() {
                        _heightFt = ft;
                        _updateCmInchesFromFt(ft);
                      });
                      widget.onChange(_heightCm);
                    },
                    controller: TextEditingController(text: _heightFt.toStringAsFixed(2)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("in:", style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                SizedBox(
                  width: 100,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      double inches = double.tryParse(value) ?? 59.06;
                      setState(() {
                        _heightIn = inches;
                        _updateCmFeetFromIn(inches);
                      });
                      widget.onChange(_heightCm);
                    },
                    controller: TextEditingController(text: _heightIn.toStringAsFixed(2)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Slider(
              min: 0,
              max: 240,
              value: _heightCm.toDouble(),
              onChanged: (value) {
                setState(() {
                  _heightCm = value.toInt();
                  _updateFeetInchesFromCm(_heightCm);
                });
                widget.onChange(_heightCm);
              },
            ),
          ],
        ),
      ),
    );
  }
}