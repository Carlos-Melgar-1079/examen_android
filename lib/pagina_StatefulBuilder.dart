import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pantallanueve extends StatefulWidget {
  const Pantallanueve({Key? key}) : super(key: key);

  @override
  State<Pantallanueve> createState() => _PantallanueveState();
}

class _PantallanueveState extends State<Pantallanueve> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    ///
    ///
    debugPrint('The whole page is built');

    return Scaffold(
      appBar: AppBar(title: const Text('StatefulBuilder')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatefulBuilder(
              builder: (context, internalState) {
                /// this `internalState` is only application inside
                /// this bracket
                ///
                debugPrint('StatefulBuilder is built');
                return CupertinoButton(
                  onPressed: () {
                    internalState(() {
                      counter++;
                    });
                  },
                  child: Text(
                    '$counter',
                    style: const TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
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
