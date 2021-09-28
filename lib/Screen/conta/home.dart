import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/home_header_button.dart';
import 'package:neo/Screen/componentes_globais/scaffold_home.dart';
import 'package:neo/Screen/componentes_globais/slider_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldHome(conteudo: [
      SliderBar(
        size: size,
        min: 0,
        max: 5000,
        divisions: 10,
      )
    ], title: 'Olá João');
  }
}
