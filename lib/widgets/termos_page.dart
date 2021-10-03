import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:neo/components/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

class TermosPage extends StatefulWidget {
  final String title;
  final String formTitle;
  final String backBtnRoute;
  final String content;
  final String termsTxt;
  final Function()? btnFunction;
  const TermosPage(
      {Key? key,
      required this.title,
      required this.backBtnRoute,
      required this.content,
      required this.termsTxt,
      required this.btnFunction,
      required this.formTitle})
      : super(key: key);

  @override
  _TermosPageState createState() => _TermosPageState();
}

class _TermosPageState extends State<TermosPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: widget.title,
      rota: widget.backBtnRoute,
    );
  }

  Widget _corpo(Size size) {
    bool? value = true;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.02),
      child: Container(
        color: AppCores.BRANCO,
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.01),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: size.height * 0.55,
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Text(
                    widget.content,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppCores.PRETO,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Container(
                  height: size.height * 0.05,
                  width: size.width * 0.7,
                  child: Text(
                    widget.termsTxt,
                    maxLines: null,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            BotaoGeral(
              text: 'Concordar',
              size: size * 1.12,
              h: 0,
              v: 0.065,
              cor: AppCores.ROXOPRINCIPAL,
              fonte: FontWeight.w800,
              tam: 18,
              fun: widget.btnFunction,
            ),
          ],
        ),
      ),
    );
  }
}
