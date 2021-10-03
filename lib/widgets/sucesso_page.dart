import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_imagens_carrosel.dart';

class SucessoPage extends StatefulWidget {
  final String title;
  final String content;
  const SucessoPage({Key? key, required this.title, required this.content})
      : super(key: key);

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
          widget.title,
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
            RotasImagens(h: 0.3, image: AssetImage(RoutesImagens.SECONDIMAGE)),
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  color: AppCores.ROXOPRINCIPAL,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.02,
                        horizontal: size.width * 0.08),
                    child: Container(
                      height: size.height * 0.8,
                      width: size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.02,
                        ),
                        child: Text(
                          'texto 1\ntexto 2',
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
                    ),
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
                        vertical: size.height * 0.01),
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
