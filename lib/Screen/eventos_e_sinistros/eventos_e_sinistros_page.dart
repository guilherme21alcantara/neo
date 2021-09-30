import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/Screen/componentes_globais/home_header_button.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/Screen/eventos_e_sinistros/acompanhamento_eventos.dart';
import 'package:neo/Screen/eventos_e_sinistros/roubo_furto.dart';
import 'package:neo/widgets/eventos_e_sinistros_conteudo.dart';

class EventosESinistrosPage extends StatelessWidget {
  const EventosESinistrosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
        conteudo: _corpo(size), title: 'Eventos e Sinistros');
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Column(
        children: [
          HomeHeaderButton(
            size: size,
            title: 'Roubo e Furto',
            subtext: '',
            btnTxt: 'Abrir Evento',
            img: RoutesImagens.FIRSTIMAGE,
            function: () {
              Get.offAll(() => RouboFurtoPage());
            },
          ),
          EventosESinistrosConteudo(size),
          Padding(
            padding: EdgeInsets.all(size.width * 0.04),
            child: Container(
              height: size.height * 0.25,
              decoration: BoxDecoration(
                color: AppCores.BRANCO,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(size.width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.02),
                          child: Text(
                            'Acompanhamento\nde Eventos\nAbertos',
                            style: TextStyle(
                                color: AppCores.LARANJA,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        TextButton(
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all<Color?>(
                                  AppCores.BRANCO)),
                          onPressed: () {
                            Get.offAll(() => AcompanhamentoEventosPage());
                          },
                          child: Container(
                              height: size.height * 0.03,
                              decoration: BoxDecoration(
                                  color: AppCores.LARANJA,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.07),
                                child: Center(
                                  child: Text(
                                    'Acompanhar',
                                    style: TextStyle(
                                        fontSize: 14, color: AppCores.BRANCO),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  RotasImagens(
                      h: 0.2,
                      w: 0.35,
                      image: AssetImage(RoutesImagens.SECONDIMAGE))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
