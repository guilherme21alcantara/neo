//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:neo/Screen/conta/login.dart';

class BotaoEntrar extends StatelessWidget {
  final String texto;
  final Color cor;
  const BotaoEntrar({this.texto, this.cor});

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
                  color: cor,
                  decoration: TextDecoration.underline),
            ),
            onPressed: () 
            {
              Get.offAll(LoginPage());
            }),
      ),
    );
  }
}
