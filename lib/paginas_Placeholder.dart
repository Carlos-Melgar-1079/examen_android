import 'package:flutter/material.dart';

class Pantallacinco extends StatelessWidget {
  const Pantallacinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Placeholder')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Placeholder(
            fallbackHeight: 100,
            strokeWidth: 5,
            color: Colors.teal,
          ),
          Row(
            children: const [
              Placeholder(
                fallbackHeight: 400,
                fallbackWidth: 250,
                strokeWidth: 5,
                color: Colors.pink,
              ),
            ],
          ),
          const Placeholder(
            fallbackHeight: 40,
            strokeWidth: 5,
            color: Colors.red,
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
    );
  }
}
