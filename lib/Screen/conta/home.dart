import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/scaffold_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldHome(conteudo: [], title: 'Olá João');
  }
}
