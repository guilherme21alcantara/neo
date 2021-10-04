//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';

import 'package:neo/components/componentes_globais/slider_bar.dart';
import 'package:neo/widgets/busca_modelo_placa.dart';
import 'package:neo/widgets/buscar_placa.dart';
import 'package:neo/widgets/cadastro_campos.dart';
import 'package:neo/widgets/cadastro_visual.dart';

Widget lista(Size size, bool aceita, bool visualiza, bool campo, bool busca,
    bool modelos) {
  return CustomList(
      size: size,
      height: size.height * 0.85,
      ativa: aceita,
      widget: Column(
        children: [
          if (visualiza) visual(size),
          SizedBox(height: size.height * 0.03),
          if (campo) campos(size),
          if (busca) buscar(size),
          if (modelos) modelo(size),
         
        ],
      ));
}
