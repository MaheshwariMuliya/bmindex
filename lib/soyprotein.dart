import 'package:flutter/material.dart';

class SoyProteinInfo extends StatelessWidget {
  const SoyProteinInfo({super.key});

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
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const _ProteinOverview(),
              const SizedBox(height: 16),
              const _AminoAcidProfile(),
              const SizedBox(height: 16),
              const _ProteinTypes(),
              const SizedBox(height: 16),
              const _DigestionProcess(),
              const SizedBox(height: 16),
              const _ProteinMetabolism(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProteinOverview extends StatelessWidget {
  const _ProteinOverview();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is Soy Protein?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(
              'Soy protein is a high-quality, plant-based protein derived from soybeans. It contains all essential amino acids, making it an excellent option for vegans and vegetarians.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class _AminoAcidProfile extends StatelessWidget {
  const _AminoAcidProfile();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Amino Acid Profile of Soy Protein:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(
              'Soy protein contains a full spectrum of amino acids, making it a complete protein. Here is the list of essential amino acids found in soy protein:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              '• Leucine\n• Isoleucine\n• Valine\n• Lysine\n• Methionine\n• Threonine\n• Phenylalanine\n• Tryptophan\n• Histidine',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProteinTypes extends StatelessWidget {
  const _ProteinTypes();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Types of Soy Protein:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(
              'Soy protein comes in two main forms that differ in protein content and usage:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              '1. **Soy Protein Isolate**: Contains 90-95% protein and is commonly used in protein powders and supplements.\n'
              '2. **Soy Protein Concentrate**: Contains about 70% protein, often found in tofu, soy milk, and other soy-based products.',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class _DigestionProcess extends StatelessWidget {
  const _DigestionProcess();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soy Protein Digestion Process:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(
              'The digestion of soy protein starts in the stomach, where it is broken down by the enzyme pepsin into smaller peptides. This process continues in the small intestine, where other enzymes like trypsin further break down the peptides into amino acids.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              '• The stomach acid denatures the protein.\n'
              '• Pepsin breaks the protein into smaller peptides.\n'
              '• Proteases in the small intestine further break peptides into amino acids.\n'
              '• Amino acids are absorbed into the bloodstream.',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProteinMetabolism extends StatelessWidget {
  const _ProteinMetabolism();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soy Protein Metabolism:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(
              'Once soy protein is digested and broken down into amino acids, these amino acids are absorbed into the bloodstream and transported to various tissues. They are then used for protein synthesis, energy production, or conversion into other compounds like glucose.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              '• Amino acids from soy protein are used to build and repair tissues.\n'
              '• They can also be used for energy production through gluconeogenesis.\n'
              '• Any excess amino acids undergo deamination, where the nitrogen group is removed, producing urea, which is excreted through urine.',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false ,
    home: SoyProteinInfo(),
  ));
}
