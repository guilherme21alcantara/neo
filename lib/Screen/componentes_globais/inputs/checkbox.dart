import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';

class CustomCheckBox extends StatefulWidget {
  final Size size;
  final String title;
  const CustomCheckBox({Key? key, required this.size, required this.title})
      : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? value = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.size.height * 0.02,
        width: widget.size.width * 0.3,
        child: Row(
          children: [
            Checkbox(
              value: value,
              onChanged: (b) {
                setState(() {
                  value = b;
                });
              },
              fillColor:
                  MaterialStateProperty.all<Color>(AppCores.ROXOPRINCIPAL),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
            ),
            Text(
              widget.title,
              style: TextStyle(fontSize: 16),
            )
          ],
        ));
  }
}
