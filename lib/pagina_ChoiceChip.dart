import 'package:flutter/material.dart';

class Pantallaseis extends StatefulWidget {
  const Pantallaseis({Key? key}) : super(key: key);

  @override
  State<Pantallaseis> createState() => _PantallaseisState();
}

class _PantallaseisState extends State<Pantallaseis> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choice Chip')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChoiceChip(
              avatar: const Icon(Icons.ac_unit),
              label: const Text('Choice Chip'),
              selected: _isSelected,
              onSelected: (newBoolValue) {
                setState(() {
                  _isSelected = newBoolValue;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Pantalla inicial'),
            ),
          ],
        ),
      ),
    );
  }
}
