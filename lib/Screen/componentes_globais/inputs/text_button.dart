//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';


class CustomTextButton extends StatelessWidget {
  final Size size;
  final String textoComum;
  final String textoClicavel;
  final Function() function;
  final double h;
  const CustomTextButton(
      {Key key,
      this.textoComum,
      this.textoClicavel,
      this.function,
      this.size, this.h})
      : super(key: key);

  
  @override
  Widget build(BuildContext context) {

    
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * h ),
      child: Container(
        height: size.height * 0.03,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(textoComum,
                style: TextStyle(
                    color: AppCores.PRETO,
                    decoration: TextDecoration.underline)),
            Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.0095),
              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, minimumSize: Size(30, 10)),
                  onPressed: function,
                  child: Text(
                    textoClicavel,
                    style: TextStyle(
                        color: AppCores.ROXOPRINCIPAL,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        decorationColor: AppCores.ROXOPRINCIPAL),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
