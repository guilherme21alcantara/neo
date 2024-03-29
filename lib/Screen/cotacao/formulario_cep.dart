
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:neo/Screen/cotacao/informe_cpf.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:neo/components/componentes_globais/componentes_carrosel/container_nao_selecionado.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:neo/components/componentes_globais/componentes_carrosel/container_selecionado.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:neo/components/componentes_globais/componentes_textos_header/header.dart';
import 'package:neo/components/componentes_globais/inputs/input_dropdown.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:neo/components/componentes_globais/inputs/input_texto.dart';
import 'package:neo/components/componentes_globais/inputs/radio_button_fino.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:neo/components/componentes_globais/inputs/text_button.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';

class FormularioCEP extends StatefulWidget {
  final Size size;
  final String title;
  final bool temCampoInfo;
  const FormularioCEP(
      {Key? key,
      required this.size,
      required this.title,
      required this.temCampoInfo})
      : super(key: key);

  @override
  _FormularioCEPState createState() => _FormularioCEPState();
}

class _FormularioCEPState extends State<FormularioCEP> {
  bool veiculoFicaGaragem = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _corpo(widget.size),
    );
  }

  Widget _corpo(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(List.generate(
              1,
              (i) => Column(
                children: [
                  Column(
                    children: [
                      _campoCEP(size),
                      if (widget.temCampoInfo) _infoFields(size),
                      _veiculoField(size),
                    ],
                  )
                ],
              ),
            ).toList()),
          ),
        ],
      ),
    );
  }

  Widget _campoCEP(Size size) {
    return Column(children: [
      MainHeader(
          paddingLados: size.width * 0.15, size: size, text: widget.title),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.01),
        child: Container(
            color: AppCores.BRANCO,
            child: Column(
              children: [
                SizedBox(height: size.height * 0.01),
                InputTexto(size: size, text: 'CEP', h: 0.01, v: 0.05),
                CustomTextButton(
                    textoComum: 'Não sabe o CEP?',
                    textoClicavel: 'Aqui !',
                    function: () {},
                    h: 0.08,
                    size: size),
                SizedBox(height: size.height * 0.01),
              ],
            )),
      )
    ]);
  }

  Widget _infoFields(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
      child: Container(
        color: AppCores.BRANCO,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.01),
            CustomDropdown(
                size: size, text: 'Estado', optionsList: ['optionsList']),
            CustomDropdown(
                size: size, text: 'Cidade', optionsList: ['optionsList']),
            InputTexto(size: size, text: 'Rua / Avenida', h: 0.01, v: 0.05),
            InputTexto(size: size, text: 'Número', h: 0.01, v: 0.05),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }

  Widget _veiculoField(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
      child: Container(
        color: AppCores.BRANCO,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: Text(
                'O Veículo ﬁca em garagem?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            RadioButtonFino(
                value: true,
                groupValue: veiculoFicaGaragem,
                onChanged: (value) {
                  setState(() {
                    veiculoFicaGaragem = true;
                  });
                },
                size: size,
                text: 'SIM'),
            RadioButtonFino(
                value: false,
                groupValue: veiculoFicaGaragem,
                onChanged: (value) {
                  setState(() {
                    veiculoFicaGaragem = false;
                  });
                },
                size: size,
                text: 'NÃO'),
            SizedBox(height: size.height * 0.01),
            Padding(
                    padding: EdgeInsets.only(left: size.width*0.8),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppCores.ROXOPRINCIPAL),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: size.height * 0.05,
                      width: size.width * 0.1,
                      child: IconButton(
                          icon: Image.asset(RoutesImagens.BUTTON),
                          iconSize: 30,
                          onPressed: () {
                            Get.offAll(InformeCPF());
                          }),
                    ),
                  ),
               SizedBox(height: size.height * 0.01),
          Padding(
            padding: EdgeInsets.only(
                      top: size.height * 0.1, left: size.height * 0.11),
            child: Container(
            height: size.height * 0.05,
            width: size.width * 0.6,
            child: Row(
              children: [
                SizedBox(width: size.width * 0.03),
                ContainerNaoSelect(),
                SizedBox(width: size.width * 0.03),
                ContainerNaoSelect(),
                SizedBox(width: size.width * 0.03),
                ContainerNaoSelect(),
                SizedBox(width: size.width * 0.03),
                ContainerSelect(cor: AppCores.ROXOPRINCIPAL),
                SizedBox(width: size.width * 0.03),
                ContainerNaoSelect(),
              ],
            ),
          ))
          ],
        ),
      ),
    );
  }
}
