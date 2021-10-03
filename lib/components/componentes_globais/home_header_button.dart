import 'package:flutter/material.dart';

import 'componentes_temas/cores.dart';
import 'componentes_temas/imagens.dart';

class HomeHeaderButton extends StatelessWidget {
  final Size size;
  final String title;
  final String subtext;
  final String btnTxt;
  final String img;
  final Function()? function;
  const HomeHeaderButton(
      {Key? key,
      required this.size,
      required this.title,
      required this.subtext,
      required this.btnTxt,
      required this.img,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(size.width * 0.04),
      child: Container(
        height: size.height * 0.2,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: AppCores.ROXOPRINCIPAL,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  (subtext != '')
                      ? Text(
                          subtext,
                          style: TextStyle(
                              color: AppCores.PRETO,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      : Container(),
                  TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all<Color?>(AppCores.BRANCO)),
                    onPressed: function,
                    child: Container(
                        height: size.height * 0.03,
                        decoration: BoxDecoration(
                            color: AppCores.ROXOPRINCIPAL,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07),
                          child: Center(
                            child: Text(
                              btnTxt,
                              style: TextStyle(
                                  fontSize: 14, color: AppCores.BRANCO),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
            Image(
                image: ResizeImage(AssetImage(img),
                    height: (size.height * 0.2).floor(),
                    width: (size.width * 0.4).floor()))
          ],
        ),
      ),
    );
  }
}
