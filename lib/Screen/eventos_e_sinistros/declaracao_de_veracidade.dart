import 'package:flutter/material.dart';

import 'package:neo/components/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

class DeclaracaoVeracidade extends StatefulWidget {
  const DeclaracaoVeracidade({Key? key}) : super(key: key);

  @override
  _DeclaracaoVeracidadeState createState() => _DeclaracaoVeracidadeState();
}

class _DeclaracaoVeracidadeState extends State<DeclaracaoVeracidade> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Declaração',
      rota: '',
    );
  }

  Widget _corpo(Size size) {
    bool? value = true;
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.03),
        child: Container(
          color: AppCores.BRANCO,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: size.height * 0.03),
                child: Text(
                  'Declaração de Veracidade',
                  style: TextStyle(
                      color: AppCores.ROXOPRINCIPAL,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.085),
                child: Container(
                  height: size.height * 0.4,
                  width: size.width,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.02),
                    child: Text(
                      'Declaro por meio deste a veracidade de todas as informações fornecidas e prestadas.',
                      maxLines: null,
                      style: TextStyle(fontSize: 15),
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
                    fillColor: MaterialStateProperty.all<Color>(
                        AppCores.ROXOPRINCIPAL),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.width * 0.7,
                    child: Text(
                      'Declaro por meio deste a veracidade de todas as informações fornecidas e prestadas.',
                      maxLines: null,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              BotaoGeral(
                text: 'Assinar',
                size: size * 1.12,
                h: 0,
                v: 0.065,
                cor: AppCores.ROXOPRINCIPAL,
                fonte: FontWeight.w800,
                tam: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
