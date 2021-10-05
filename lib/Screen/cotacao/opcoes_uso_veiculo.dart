import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:neo/Screen/cotacao/formulario_cep.dart';
import 'package:neo/Screen/cotacao/formulario_cep_tela.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/Cotacao/opcoes_veiculo.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';
import 'package:neo/components/componentes_globais/componentes_carrosel/container_nao_selecionado.dart';
import 'package:neo/components/componentes_globais/componentes_carrosel/container_selecionado.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/componentes_textos_header/header.dart';
import 'package:neo/components/componentes_globais/inputs/radio_button.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';
import 'package:get/route_manager.dart';

class OpcoesUsoVeiculo extends StatefulWidget {
  const OpcoesUsoVeiculo({Key? key}) : super(key: key);

  @override
  _OpcoesUsoVeiculoState createState() => _OpcoesUsoVeiculoState();
}

class _OpcoesUsoVeiculoState extends State<OpcoesUsoVeiculo> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      title: TITULOS.COTACAO,
      conteudo: _corpo(size),
      rota: '',
    );
  }

  Widget _corpo(Size size) {
    return Container(
      height: size.height * 0.9,
      width: size.width,
      child: ListView(
        children: [
          MainHeader(
            paddingLados: size.width * 0.05,
            size: size,
            text: OPCOESVEICULO.CORPO,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          CustomRadioButton(
              value: 1,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                  Get.offAll(FormularioCep());
                });
              },
              size: size,
              text: 'Apenas para passeio'),
          CustomRadioButton(
              value: 2,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Uso pessoal do dia a dia'),
          CustomRadioButton(
              value: 3,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Sou motorista de app ou taxista'),
          CustomRadioButton(
              value: 4,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Uso para transporte de cargas e frete'),
          CustomRadioButton(
              value: 5,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Uso para ida e volta ao trabalho'),
          CustomRadioButton(
              value: 6,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Visita de clientes ou fornecedores'),
          CustomRadioButton(
              value: 7,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Uso para ir a faculdade ou curso'),
          CustomRadioButton(
              value: 8,
              groupValue: selectedValue,
              onChanged: (v) {
                setState(() {
                  selectedValue = int.parse(v.toString());
                });
              },
              size: size,
              text: 'Outros usos a trabalho'),
          Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.03, left: size.height * 0.11),
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
    );
  }
}
