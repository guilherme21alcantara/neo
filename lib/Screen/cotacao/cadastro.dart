//@dart=2.9
import 'package:flutter/material.dart';

class CotarCadastro extends StatefulWidget {
  const CotarCadastro({ Key key }) : super(key: key);

  @override
  _CotarCadastroState createState() => _CotarCadastroState();
}

class _CotarCadastroState extends State<CotarCadastro> {
  @override
  Widget build(BuildContext context) {
      var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Scaffold
    (
      appBar: AppBar(
        toolbarHeight: size.height * 0.15,
        leading: Icon(Icons.arrow_back, size: 30),
        centerTitle: true,
      ),
    );
  }
}