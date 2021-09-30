import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:neo/Screen/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_dropdown.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/eventos_e_sinistros/regras_utilizacao.dart';

Widget IncidenteForm(Size size) {
  List<String> optionsList = ['opção 1', 'opção 2'];

  return Column(
    children: [
      InputTexto(
        size: size,
        text: 'Nome completo',
        h: 0.01,
        v: 0.085,
        height: size.height * 0.055,
      ),
      CustomDropdown(size: size, text: 'Placa', optionsList: optionsList),
      CustomDropdown(
          size: size, text: 'Tipo do Evento', optionsList: optionsList),
      InputTexto(
        size: size,
        text: 'Nome Completo do Condutor',
        h: 0.01,
        v: 0.085,
        height: size.height * 0.055,
      ),
      InputTexto(
        size: size,
        text: 'CPF do condutor',
        h: 0.01,
        v: 0.085,
        height: size.height * 0.055,
      ),
      InputTexto(
        size: size,
        text: 'Local do evento',
        h: 0.01,
        v: 0.085,
        height: size.height * 0.055,
      ),
      InputTexto(
        size: size,
        text: 'Motivo da presença no local',
        h: 0.01,
        v: 0.085,
        height: size.height * 0.055,
      ),
      InputTexto(
        size: size,
        text: 'Nº B.O.',
        h: 0.01,
        v: 0.085,
        height: size.height * 0.055,
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.01, horizontal: size.width * 0.085),
        child: Container(
          height: size.height * 0.2,
          width: size.width,
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: TextField(
              maxLines: null,
              maxLength: 500,
              decoration: new InputDecoration(
                counterText: '',
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                hintText: 'Conte-nos o ocorrido',
                hintMaxLines: 2,
                hintStyle: TextStyle(color: AppCores.PRETO),
              ),
            ),
          ),
        ),
      ),
      BotaoGeral(
        text: 'Continuar',
        size: size * 1.12,
        h: 0.01,
        v: 0.065,
        cor: AppCores.ROXOPRINCIPAL,
        fonte: FontWeight.w800,
        tam: 18,
      ),
      TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all<Color?>(AppCores.BRANCO)),
          child: Text(
            'Regras de utilização',
            style: TextStyle(
                fontSize: 16,
                color: AppCores.PRETO,
                decoration: TextDecoration.underline),
          ),
          onPressed: () => {Get.offAll(() => RegrasUtilizacao())}),
    ],
  );
}
