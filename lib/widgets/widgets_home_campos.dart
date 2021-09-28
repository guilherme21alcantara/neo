import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/home_card.dart';

class HomeCampos extends StatelessWidget {
  final Size size;
  const HomeCampos({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                iconData: Icons.shield_outlined),
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                iconData: Icons.shield_outlined),
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                iconData: Icons.shield_outlined),
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                iconData: Icons.shield_outlined),
          ],
        ),
        Column(
          children: [
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                iconData: Icons.shield_outlined),
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                iconData: Icons.shield_outlined),
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                iconData: Icons.shield_outlined),
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                iconData: Icons.shield_outlined),
          ],
        ),
      ],
    );
  }
}
