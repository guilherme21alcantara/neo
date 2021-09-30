import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:neo/Screen/componentes_globais/home_card.dart';
import 'package:neo/Screen/eventos_e_sinistros/acidente_pessoal_passageiros.dart';
import 'package:neo/Screen/eventos_e_sinistros/assistencia_24_horas.dart';
import 'package:neo/Screen/eventos_e_sinistros/carro_reserva.dart';
import 'package:neo/Screen/eventos_e_sinistros/colisao_a_terceiros.dart';
import 'package:neo/Screen/eventos_e_sinistros/incendio_fenomenos_naturais.dart';

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
            function: () {
              Get.offAll(() => Assistencia24Horas());
            },
          ),
          HomeCard(
              size: size,
              text: 'Acidente pessoal de Passageiros',
              imageProvider: AssetImage('assets/eventos.png'),
              function: () {
                Get.offAll(() => AcidentePessoalPassageirosPage());
              }),
          HomeCard(
              size: size,
              text: 'Carro \nReserva',
              imageProvider: AssetImage('assets/eventos.png'),
              function: () {
                Get.offAll(() => CarroReservaPage());
              }),
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
              function: () {
                Get.offAll(() => ColisaoTerceirosPage());
              }),
          HomeCard(
              size: size,
              text: 'Incêndio e Fenômenos Naturais',
              imageProvider: AssetImage('assets/camera.png'),
              function: () {
                Get.offAll(() => IncendioFenomenosNaturaisPage());
              }),
        ],
      ),
    ],
  );
  ;
}
