import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

class TermosPrivacidadePage extends StatelessWidget {
  final Size size;
  const TermosPrivacidadePage({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Privacidade',
      rota: '',
    );
  }

  Widget _corpo(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.02),
      child: Container(
        color: AppCores.BRANCO,
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Text(
              'Termos de privacidade',
              style: TextStyle(
                  fontSize: 20,
                  color: AppCores.ROXOPRINCIPAL,
                  fontWeight: FontWeight.bold),
            ),
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
                    'Termos de privacidade',
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
              fun: () {},
            ),
          ],
        ),
      ),
    );
  }
}
