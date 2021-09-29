import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/home_card.dart';

Widget EventosESinistrosConteudo(Size size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          HomeCard(
            size: size,
            text: 'Assistência 24 horas',
            imageProvider: AssetImage('assets/adicionar_veiculo.png'),
            function: () {},
          ),
          HomeCard(
              size: size,
              text: 'Acidente pessoal de Passageiros',
              imageProvider: AssetImage('assets/eventos.png'),
              function: () {}),
          HomeCard(
              size: size,
              text: 'Carro \nReserva',
              imageProvider: AssetImage('assets/eventos.png'),
              function: () {}),
        ],
      ),
      Column(
        children: [
          HomeCard(
              size: size,
              text: 'Vidros',
              imageProvider: AssetImage('assets/adicionar_veiculo.png'),
              function: () {}),
          HomeCard(
              size: size,
              text: 'Colisão a Terceiros',
              imageProvider: AssetImage('assets/adicionar_veiculo.png'),
              function: () {}),
          HomeCard(
              size: size,
              text: 'Incêndio e Fenômenos Naturais',
              imageProvider: AssetImage('assets/camera.png'),
              function: () {}),
        ],
      ),
    ],
  );
  ;
}