import 'package:flutter/material.dart';

class Pantallasiete extends StatefulWidget {
  const Pantallasiete({Key? key}) : super(key: key);

  @override
  State<Pantallasiete> createState() => _PantallasieteState();
}

class _PantallasieteState extends State<Pantallasiete> {
  double padValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Animated Padding')),
      body: Column(
        children: [
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 1),
            curve: Curves.bounceOut,
            child: Image.network(
                'https://images.unsplash.com/photo-1455390582262-044cdead277a?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZXNjcml0dXJhfGVufDB8fDB8fHww'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    padValue = 50;
                  });
                },
                icon: const Icon(
                  Icons.zoom_out,
                  color: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    padValue = 0;
                  });
                },
                icon: const Icon(
                  Icons.zoom_in,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              '''Cow, in common parlance, a domestic bovine, regardless of  sex and age, usually of the species Bos taurus. In precise usage, the name is given to mature females of several large mammals, including cattle (bovines), moose, elephants, sea lions, and whales.
                ''',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
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
