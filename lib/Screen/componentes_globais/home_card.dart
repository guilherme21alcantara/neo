import 'package:flutter/material.dart';

import 'componentes_temas/cores.dart';

class HomeCard extends StatelessWidget {
  final Size size;
  final ImageProvider imageProvider;
  final String text;
  final Function()? function;
  const HomeCard({
    Key? key,
    required this.size,
    required this.imageProvider,
    required this.text,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.01, vertical: size.height * 0.01),
      child: Container(
        height: size.height * 0.1,
        width: size.width * 0.47,
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
            style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all<Color?>(AppCores.BRANCO)),
            onPressed: function,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    text,
                    maxLines: null,
                    softWrap: true,
                    style: TextStyle(
                      color: AppCores.PRETO,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.05,
                  width: size.width * 0.1,
                  child: Image(
                    image: imageProvider,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
