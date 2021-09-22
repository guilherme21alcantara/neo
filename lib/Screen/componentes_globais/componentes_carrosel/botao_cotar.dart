//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class BotaoCotar extends StatelessWidget {
  final String texto;

  const BotaoCotar({this.texto});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.04),
      child: Container(
          height: size.height * 0.05,
          width: size.width * 0.7,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ))),
            child: Text(
              texto,
              style: TextStyle(fontSize: 18, color: HexColor('#7f47fa')),
            ),
            onPressed: () {},
          )),
    );
  }
}
