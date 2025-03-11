import 'package:flutter/material.dart';
import 'results_creen.dart';

class BMRCalculatorScreen extends StatefulWidget {
  @override
  _BMRCalculatorScreenState createState() => _BMRCalculatorScreenState();
}

class _BMRCalculatorScreenState extends State<BMRCalculatorScreen> {
  final _formKey = GlobalKey<FormState>();
  int age = 0;
  double weight = 0.0;
  double height = 0.0;
  String gender = 'Male';
  String weightUnit = 'lb';
  String heightUnit = 'in';
  String activityLevel = 'Sedentary';
  double bmr = 0.0;

  Map<String, double> activityFactors = {
    'Sedentary': 1.2,
    'Lightly Active': 1.375,
    'Moderately Active': 1.55,
    'Very Active': 1.725,
    'Extra Active': 1.9,
  };

  void _calculateBMR() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      double weightInLb = (weightUnit == 'kg') ? weight * 2.20462 : weight;
      double heightInInches = (heightUnit == 'cm') ? height / 2.54 : height;

      if (gender == 'Male') {
        bmr = 66 + (6.23 * weightInLb) + (12.7 * heightInInches) - (6.8 * age);
      } else {
        bmr = 655 + (4.35 * weightInLb) + (4.7 * heightInInches) - (4.7 * age);
      }

      bmr *= activityFactors[activityLevel]!;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(bmr: bmr),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMR CALCULATOR',
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
      body: Container(
        color: Colors.white, // Set background color to white
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  'Calculate Your BMR',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Changed text color to blue
                  ),
                ),
                const SizedBox(height: 20),

                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        _buildTextField(
                          label: 'Age (years)',
                          icon: Icons.calendar_today,
                          onSave: (value) => age = int.parse(value!),
                        ),
                        const SizedBox(height: 16),
                        _buildTextField(
                          label: 'Weight',
                          icon: Icons.line_weight,
                          suffixText: weightUnit,
                          onSave: (value) => weight = double.parse(value!),
                        ),
                        const SizedBox(height: 16),
                        _buildDropdown(
                          label: 'Weight Unit',
                          icon: Icons.fitness_center,
                          value: weightUnit,
                          items: ['lb', 'kg'],
                          onChanged: (value) => setState(() => weightUnit = value!),
                        ),
                        const SizedBox(height: 16),
                        _buildTextField(
                          label: 'Height',
                          icon: Icons.height,
                          suffixText: heightUnit,
                          onSave: (value) => height = double.parse(value!),
                        ),
                        const SizedBox(height: 16),
                        _buildDropdown(
                          label: 'Height Unit',
                          icon: Icons.straighten,
                          value: heightUnit,
                          items: ['in', 'cm'],
                          onChanged: (value) => setState(() => heightUnit = value!),
                        ),
                        const SizedBox(height: 16),
                        _buildDropdown(
                          label: 'Gender',
                          icon: Icons.person,
                          value: gender,
                          items: ['Male', 'Female'],
                          onChanged: (value) => setState(() => gender = value!),
                        ),
                        const SizedBox(height: 16),
                        _buildDropdown(
                          label: 'Activity Level',
                          icon: Icons.directions_run,
                          value: activityLevel,
                          items: activityFactors.keys.toList(),
                          onChanged: (value) => setState(() => activityLevel = value!),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                ElevatedButton(
                  onPressed: _calculateBMR,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Calculate BMR',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required IconData icon,
    String? suffixText,
    required Function(String?) onSave,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        suffixText: suffixText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        prefixIcon: Icon(icon, color: Colors.blue),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
      onSaved: onSave,
    );
  }

  Widget _buildDropdown({
    required String label,
    required IconData icon,
    required String value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        prefixIcon: Icon(icon, color: Colors.blue),
      ),
      items: items.map((item) {
        return DropdownMenuItem(value: item, child: Text(item));
      }).toList(),
      onChanged: onChanged,
    );
  }
}