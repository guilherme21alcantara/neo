import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';

Dialog PopUpSimples(
    Size size, String title, String content, String btnTitle, Function()? func,
    {String txtBtnTitle = '', Function()? txtBtnFunc = null}) {
  return Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: AppCores.BRANCO,
      ),
      height: size.height * 0.35,
      width: size.width,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppCores.BRANCO,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            height: size.height * 0.06,
            child: Center(
                child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
          BotaoGeral(
              text: btnTitle,
              size: size * 1.12,
              h: 0,
              v: 0.065,
              cor: AppCores.ROXOPRINCIPAL,
              fonte: FontWeight.w800,
              tam: 18,
              fun: func),
          SizedBox(
            height: size.height * 0.01,
          ),
          TextButton(
              child: Text(
                txtBtnTitle,
                style: TextStyle(
                    fontSize: 18,
                    color: AppCores.PRETO,
                    decoration: TextDecoration.underline),
              ),
              onPressed: txtBtnFunc),
        ],
      ),
    ),
  );
}
