//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/widgets/widgets_cadastro_campos.dart';
import 'package:neo/widgets/widgets_cadastro_visual.dart';

Widget lista(Size size) {
  return CustomList(
      size: size,
      height: size.height * 0.85,
      widget: Column(
        children: [
          visual(size),
          SizedBox(height: size.height * 0.03),
          campos(size)
        ],
      ));
}
