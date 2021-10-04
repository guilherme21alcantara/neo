import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/widgets/perfil_conteudo.dart';
import 'package:neo/widgets/perfil_header.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01, horizontal: size.width * 0.1),
              child: Container(
                  height: size.height * 0.22,
                  width: size.width,
                  child: PerfilHeader(size, 'John Smith')),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01, horizontal: size.width * 0.1),
              child: Container(
                  height: size.height * 0.6,
                  width: size.width,
                  child: PerfilConteudo(size)),
            )
          ],
        ),
      ),
    );
  }
}
