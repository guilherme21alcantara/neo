//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BotaoEntrar extends StatelessWidget {
  final String texto;
  const BotaoEntrar({this.texto});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.03),
      child: Container(
        height: size.height * 0.05,
        width: size.width * 0.7,
        child: TextButton(
            child: Text(
              texto,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  decoration: TextDecoration.underline),
            ),
            onPressed: () {}),
      ),
    );
  }
}
