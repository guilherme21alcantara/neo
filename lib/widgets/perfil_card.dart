import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';

Widget PerfilCard(Size size, IconData icon, String name, Function()? func) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
    child: TextButton(
        onPressed: func,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: AppCores.PRETO,
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppCores.PRETO),
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: AppCores.PRETO,
            ),
          ],
        )),
  );
}
