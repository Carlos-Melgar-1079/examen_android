import 'package:flutter/material.dart';

class Pantallados extends StatelessWidget {
  const Pantallados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: <Widget>[
          // sliver app bar
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            leading: const Icon(Icons.menu),
            //title: const Text("S L I V E R A P P B A R"),
            expandedHeight: 150,
            //floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
              title: const Text("S L I V E R A P P B A R"),
            ),
          ),

          // sliver items
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),

          // Botón "Pantalla inicial" añadido
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
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
          ),
        ],
      ),
    );
  }
}
