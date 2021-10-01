import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:neo/Screen/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_dropdown.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/Screen/eventos_e_sinistros/regras_utilizacao.dart';
import 'package:neo/widgets/termos_page.dart';

Widget TrocaTitularidadeConclusaoCampos(Size size) {
  return Column(
    children: [
      SizedBox(
        height: size.height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Container(
          color: AppCores.BRANCO,
          height: size.height * 0.4,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Center(
              child: Text(
                'Para concluir a troca de titularidade é necessário que o novo interessado realize o processo de contratação com a mesma placa do veículo informado. Na aprovação do novo titular a troca é realizada automaticamente.\n\nPara concluir encaminhe o link abaixo para que o novo titular baixe o App da Neo e conclua o processo de contratação.',
                style: TextStyle(
                  fontSize: 18,
                  color: AppCores.PRETO,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: size.height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        child: Container(
          decoration: BoxDecoration(
              color: AppCores.BRANCO,
              border: Border.all(color: AppCores.PRETO),
              borderRadius: BorderRadius.circular(20)),
          height: size.height * 0.25,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Center(
              child: Text(
                'Olá .\nEstou encaminhando o link para baixa do App da Neo Seguradora e conclusão do processo de troca de titularidade da placa XXX-XXX. Para ﬁnalizar o processo basta realizar o procedimento de contratação informando a placa identiﬁcada acima.',
                style: TextStyle(
                  fontSize: 16,
                  color: AppCores.PRETO,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: size.height * 0.01,
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.1, vertical: size.height * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.phone),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.mail),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
            ),
            IconButton(
                icon: Image.asset(RoutesImagens.BUTTON),
                iconSize: 30,
                onPressed: () {
                  Get.offAll(TermosPage(
                    title: 'Troca de titularidade',
                    backBtnRoute: '',
                    content: 'jose@gmail.com',
                    termsTxt:
                        'Assinando você concorda com os Termos da Troca de Titularidade',
                    btnFunction: () {},
                    formTitle: '',
                  ));
                }),
          ],
        ),
      ),
      SizedBox(
        height: size.height * 0.02,
      ),
    ],
  );
}
