import 'package:flutter/material.dart';
import 'package:neo/Routes/app_routes.dart';
import 'package:neo/components/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/inputs/input_texto.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

class DetalhesPerfil extends StatelessWidget {
  const DetalhesPerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Detalhes do Perfil',
      rota: Routes.HOME,
    );
  }

  Widget _corpo(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.05),
      child: CustomList(
        ativa: true,
        height: size.height,
        size: size,
        widget: Container(
          height: size.height * 0.8,
          width: size.height * 0.8,
          child: Column(
            children: [
              Container(
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
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: size.height * 0.15,
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(RoutesImagens.FIRSTIMAGE),
                                fit: BoxFit.contain),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          'John Smith',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    InputTexto(
                      size: size,
                      text: 'John Smith',
                      h: 0.01,
                      v: 0.085,
                      height: size.height * 0.055,
                    ),
                    InputTexto(
                      size: size,
                      text: '+xx xxxxxxxxx',
                      h: 0.01,
                      v: 0.085,
                      height: size.height * 0.055,
                    ),
                    InputTexto(
                      size: size,
                      text: 'email@email.com',
                      h: 0.01,
                      v: 0.085,
                      height: size.height * 0.055,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                          horizontal: size.width * 0.085),
                      child: Container(
                        height: size.height * 0.1,
                        width: size.width,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.05),
                          child: TextField(
                            maxLines: null,
                            maxLength: 500,
                            decoration: new InputDecoration(
                              counterText: '',
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText:
                                  'Iris Watson P.O. Box 283 8562 Fusce Rd.Frederick Nebraska',
                              hintMaxLines: 2,
                              hintStyle: TextStyle(color: AppCores.PRETO),
                            ),
                          ),
                        ),
                      ),
                    ),
                    BotaoGeral(
                      text: 'Salvar',
                      size: size * 1.12,
                      h: 0.01,
                      v: 0.065,
                      cor: AppCores.ROXOPRINCIPAL,
                      fonte: FontWeight.w800,
                      tam: 18,
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
