import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';

import 'componentes_globais/componentes_temas/imagens.dart';
import 'componentes_globais/custom_list.dart';
import 'componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';
import 'componentes_globais/scaffold_principal.dart';

class SucessoPage extends StatefulWidget {
  const SucessoPage({Key? key}) : super(key: key);

  @override
  _SucessoPageState createState() => _SucessoPageState();
}

class _SucessoPageState extends State<SucessoPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Scaffold(
      backgroundColor: AppCores.BACKGROUND,
      appBar: AppBar(
        toolbarHeight: size.height * 0.08,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Sucesso',
          style: TextStyle(color: AppCores.PRETO, fontWeight: FontWeight.w800),
        ),
        backgroundColor: AppCores.BRANCO,
        leading: BackButton(
          color: AppCores.PRETO,
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.02,
        color: AppCores.ROXOPRINCIPAL,
      ),
      body: _corpo(size),
    );
    ;
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [
            RotasImagens(h: 0.3, image: AssetImage(RoutesImagens.FIRSTIMAGE)),
            Container(
              height: size.height * 0.7,
              width: size.width,
              decoration: BoxDecoration(
                  color: AppCores.ROXOPRINCIPAL,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        vertical: size.height * 0.03),
                    child: Text(
                      'XXXXXXX com sucesso',
                      style: TextStyle(
                          color: AppCores.BRANCO,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.08),
                    child: Container(
                      height: size.height * 0.15,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.02,
                        ),
                        child: Text(
                          'Agora é só aguardar o envio do nosso email ou notiﬁcação conﬁrmando a realização da sua vistoria dentro dos padrões indicados.',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 18, color: AppCores.BRANCO),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        vertical: size.height * 0.025),
                    child: Column(
                      children: [
                        Text(
                          'Data: XX/XX/XXXX',
                          style: TextStyle(
                            color: AppCores.BRANCO,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        Text(
                          'Protocolo: XXXXXX',
                          style: TextStyle(
                            color: AppCores.BRANCO,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.2,
                        vertical: size.height * 0.02),
                    child: GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: size.height * 0.05,
                            decoration: BoxDecoration(
                                color: AppCores.BRANCO,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.05),
                              child: Center(
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppCores.PRETO,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
