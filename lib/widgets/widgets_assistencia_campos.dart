import 'package:flutter/cupertino.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_dropdown.dart';

Widget AssitenciaCampos(Size size) {
  List<String> optionsList = ['opção 1', 'opção 2'];
  return Column(
    children: [
      CustomDropdown(size: size, text: 'Placa', optionsList: optionsList),
      CustomDropdown(
          size: size, text: 'Tipo do Evento', optionsList: optionsList)
    ],
  );
}
