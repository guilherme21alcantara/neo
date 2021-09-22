import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/cores.dart';

class CustomRadioButton extends StatefulWidget {
  final Size size;
  final int value;
  final int groupValue;
  final Function(int?)? onChanged;
  final String text;
  const CustomRadioButton(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.onChanged,
      required this.size,
      required this.text})
      : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: widget.size.width * 0.03,
          horizontal: widget.size.width * 0.05),
      child: Container(
        decoration: BoxDecoration(
            color: AppCores.BRANCO,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: widget.size.width * 0.01,
                  left: widget.size.width * 0.02,
                  top: widget.size.width * 0.01,
                  bottom: widget.size.width * 0.01),
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
                  left: widget.size.width * 0.02,
                  bottom: widget.size.width * 0.01),
              child: Text(
                widget.text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
