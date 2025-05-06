import 'package:flutter/material.dart';
import 'package:examen_android/pagina_inicial.dart';
import 'package:examen_android/pagina_SliverAppBar.dart';
import 'package:examen_android/pagina_Slider.dart';
import 'package:examen_android/pagina_RotatedBox.dart';
import 'package:examen_android/paginas_Placeholder.dart';
import 'package:examen_android/pagina_ChoiceChip.dart';
import 'package:examen_android/pagina_AnimatedPadding.dart';
import 'package:examen_android/pagina_FadeTransition.dart';
import 'package:examen_android/pagina_StatefulBuilder.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const Pantallados(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const Pantallacuatro(),
        '/pantalla5': (context) => const Pantallacinco(),
        '/pantalla6': (context) => const Pantallaseis(),
        '/pantalla7': (context) => const Pantallasiete(),
        '/pantalla8': (context) => const Pantallaocho(),
        '/pantalla9': (context) => const Pantallanueve(),
      },
    );
  }
}
