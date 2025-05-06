import 'package:flutter/material.dart';

class Pantallaocho extends StatefulWidget {
  const Pantallaocho({Key? key}) : super(key: key);

  @override
  State<Pantallaocho> createState() => _PantallaochoState();
}

class _PantallaochoState extends State<Pantallaocho>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fade Transition')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _animation!,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 40),
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
