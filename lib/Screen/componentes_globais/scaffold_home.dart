import 'package:flutter/material.dart';

import 'componentes_temas/cores.dart';

class ScaffoldPrincipal extends StatelessWidget {
  final Widget conteudo;
  final String title;
  const ScaffoldPrincipal({
    Key? key,
    required this.conteudo,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Scaffold(
      backgroundColor: AppCores.BACKGROUND,
      appBar: AppBar(
        toolbarHeight: size.height * 0.08,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(color: AppCores.PRETO, fontWeight: FontWeight.w800),
        ),
        backgroundColor: AppCores.BRANCO,
        leading: Icon(Icons.access_alarm),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: conteudo,
    );
  }
}
