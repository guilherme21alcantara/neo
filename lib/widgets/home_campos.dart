import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/home_card.dart';
import 'package:neo/Screen/cotacao/adicionar_veiculo.dart';
import 'package:get/route_manager.dart';
import 'package:neo/Screen/eventos_e_sinistros/assistencia_24_horas.dart';
import 'package:neo/Screen/eventos_e_sinistros/eventos_e_sinistros_page.dart';

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
              imageProvider: AssetImage('assets/adicionar_veiculo.png'),
              function: () {
                Get.offAll(() => AdicionarVeiculoPage());
              },
            ),
            HomeCard(
                size: size,
                text: 'Pagamentos',
                imageProvider: AssetImage('assets/pagamentos.png'),
                function: () {}),
            HomeCard(
                size: size,
                text: 'Eventos e Sinistros',
                imageProvider: AssetImage('assets/eventos.png'),
                function: () {
                  Get.offAll(() => EventosESinistrosPage());
                }),
            HomeCard(
                size: size,
                text: 'Cancelamento',
                imageProvider: AssetImage('assets/cancelamento.png'),
                function: () {}),
          ],
        ),
        Column(
          children: [
            HomeCard(
                size: size,
                text: 'Assistência 24 horas',
                imageProvider: AssetImage('assets/adicionar_veiculo.png'),
                function: () {
                  Get.offAll(() => Assistencia24Horas());
                }),
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                imageProvider: AssetImage('assets/apolice.png'),
                function: () {}),
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                imageProvider: AssetImage('assets/camera.png'),
                function: () {}),
            HomeCard(
                size: size,
                text: 'Adicionar veículo',
                imageProvider: AssetImage('assets/vistoria.png'),
                function: () {}),
          ],
        ),
      ],
    );
  }
}
