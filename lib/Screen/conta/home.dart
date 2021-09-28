import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/home_header_button.dart';
import 'package:neo/Screen/componentes_globais/scaffold_home.dart';

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
    return ScaffoldHome(
        conteudo: [HomeHeaderButton(size: size)], title: 'Olá João');
  }
}
