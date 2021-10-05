import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/cotacao/cobertura_card.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/home_header_button.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';
import 'package:neo/components/componentes_globais/slider_bar.dart';

class CotacaoCoberturasPage extends StatefulWidget {
  const CotacaoCoberturasPage({Key? key}) : super(key: key);

  @override
  _CotacaoCoberturasPageState createState() => _CotacaoCoberturasPageState();
}

class _CotacaoCoberturasPageState extends State<CotacaoCoberturasPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Eventos e Sinistros',
      rota: '',
    );
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [
            HomeHeaderButton(
              size: size,
              title: 'Seguro Auto',
              subtext: 'Mensal',
              btnTxt: 'Digital',
              img: RoutesImagens.FIRSTIMAGE,
              function: () {},
            ),
            Container(
              width: size.width * 0.9,
              child: Text(
                'Valor Coberto',
                style: TextStyle(
                    color: AppCores.ROXOPRINCIPAL,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01, horizontal: size.width * 0.05),
              child: SliderBar(
                min: 0,
                max: 50000,
                size: size,
                divisions: 5000,
                txt: 'Fipe - Escolha o valor que você quer cobrir',
              ),
            ),
            Container(
              width: size.width * 0.9,
              child: Text(
                'Cobertura Básica',
                style: TextStyle(
                    color: AppCores.ROXOPRINCIPAL,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            CotacaoCoberturaCard(
              txt: 'Roubo e Furto',
              price: '20,00',
              expandedTxt:
                  'aisodnioansdiaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasnd',
              value: false,
              onChanged: (b) {},
            ),
            CotacaoCoberturaCard(
              txt: 'Roubo e Furto',
              price: '20,00',
              expandedTxt: 'aisodnioansdiasnd',
              value: false,
              onChanged: (b) {},
            ),
            CotacaoCoberturaCard(
              txt: 'Roubo e Furto',
              price: '20,00',
              expandedTxt: 'aisodnioansdiasnd',
              value: false,
              onChanged: (b) {},
            ),
          ],
        ),
      ),
    );
  }
}
