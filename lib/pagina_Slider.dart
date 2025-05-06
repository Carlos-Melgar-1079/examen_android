import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  _PantallaTresState createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  // create variable
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('S L I D E R'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _currentValue.toString(),
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            Slider(
              value: _currentValue,
              min: 0,
              max: 10,
              divisions: 4,
              label: _currentValue.toString(),
              activeColor: Colors.yellow,
              inactiveColor: Colors.red,
              thumbColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .green, // Corregido: cambiamos primary por backgroundColor
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                'Pantalla inicial',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
