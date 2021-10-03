import 'package:flutter/material.dart';

import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';

Dialog PopUpColorido(
  Size size,
  String title,
  String content,
  String btnTitle,
  Function()? func,
) {
  return Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: AppCores.BRANCO,
      ),
      height: size.height * 0.32,
      width: size.width,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppCores.ROSA,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            height: size.height * 0.06,
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  color: AppCores.BRANCO,
                  fontWeight: FontWeight.bold),
            )),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0, horizontal: size.width * 0.065),
              child: GestureDetector(
                  onTap: func,
                  child: Container(
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          color: AppCores.ROSA,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        child: Center(
                          child: Text(
                            btnTitle,
                            style:
                                TextStyle(fontSize: 18, color: AppCores.BRANCO),
                          ),
                        ),
                      ))))
        ],
      ),
    ),
  );
}
