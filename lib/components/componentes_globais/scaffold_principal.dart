import 'package:flutter/material.dart';
import 'package:neo/Routes/app_routes.dart';
import 'package:get/route_manager.dart';

import 'componentes_temas/cores.dart';

class ScaffoldPrincipal extends StatelessWidget {
  final Widget conteudo;
  final String title;
  final String rota;
  ScaffoldPrincipal(
      {Key? key,
      required this.conteudo,
      required this.title,
      required this.rota})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Scaffold(
      backgroundColor: AppCores.BACKGROUND,
      appBar: AppBar(
         bottomOpacity: 0.0,
        elevation: 0.0,
        toolbarHeight: size.height * 0.08,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(color: AppCores.PRETO, fontWeight: FontWeight.w800),
        ),
        backgroundColor: AppCores.BRANCO,
        leading: BackButton(
          onPressed: () {
            Get.toNamed(rota);
          },
          color: AppCores.PRETO,
        ),
      ),
      body: conteudo,
      //bottomNavigationBar: BottomAppBar(),
    );
  }
}
