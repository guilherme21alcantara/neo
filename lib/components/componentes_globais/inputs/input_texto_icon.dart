//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';

class InputTextoIcon extends StatefulWidget {
  final IconData icon;
  final double h, v;
  final Size size;
  final String text;
  const InputTextoIcon(
      {Key key, this.h, this.v, this.size, this.text, this.icon})
      : super(key: key);

  @override
  _InputTextoIconState createState() => _InputTextoIconState();
}

class _InputTextoIconState extends State<InputTextoIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: widget.size.height * widget.h,
          horizontal: widget.size.width * widget.v),
      child: Container(
          height: widget.size.height * 0.05,
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.05),
            child: Row(
              children: [
                Icon(
                  widget.icon,
                  color: AppCores.ROXOPRINCIPAL,
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 100,
                  width: 230,
                  child: Center(
                    child: TextFormField(
                      decoration: new InputDecoration.collapsed(
                          hintText: widget.text,
                          hintStyle: TextStyle(color: AppCores.PRETO)),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
