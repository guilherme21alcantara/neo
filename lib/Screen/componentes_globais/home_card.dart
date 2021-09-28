import 'package:flutter/material.dart';

import 'componentes_temas/cores.dart';

class HomeCard extends StatelessWidget {
  final Size size;
  final IconData iconData;
  final String text;
  const HomeCard({
    Key? key,
    required this.size,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.02, vertical: size.height * 0.01),
      child: Container(
        height: size.height * 0.1,
        width: size.width * 0.45,
        decoration: BoxDecoration(
          color: AppCores.BRANCO,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.02, vertical: size.height * 0.005),
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: AppCores.PRETO,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  iconData,
                  size: 28,
                  color: AppCores.PRETO,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
