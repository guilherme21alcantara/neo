import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';

class RadioButtonFino extends StatefulWidget {
  final Size size;
  final value;
  final groupValue;
  final Function(dynamic)? onChanged;
  final String text;
  const RadioButtonFino(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.onChanged,
      required this.size,
      required this.text})
      : super(key: key);

  @override
  _RadioButtonFinoState createState() => _RadioButtonFinoState();
}

class _RadioButtonFinoState extends State<RadioButtonFino> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: widget.size.width * 0.01,
          horizontal: widget.size.width * 0.03),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: HexColor("#e3e3e3")),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: widget.size.width * 0.01,
                left: widget.size.width * 0.01,
              ),
              child: Radio(
                value: widget.value,
                groupValue: widget.groupValue,
                onChanged: widget.onChanged,
                fillColor:
                    MaterialStateProperty.all<Color?>(AppCores.ROXOPRINCIPAL),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: widget.size.width * 0.01,
              ),
              child: Text(
                widget.text,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
