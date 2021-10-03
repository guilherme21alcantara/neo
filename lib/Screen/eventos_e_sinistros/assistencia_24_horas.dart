import 'package:flutter/material.dart';

import 'package:neo/components/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/assistencia_campos.dart';

class Assistencia24Horas extends StatefulWidget {
  const Assistencia24Horas({Key? key}) : super(key: key);

  @override
  _Assistencia24HorasState createState() => _Assistencia24HorasState();
}

class _Assistencia24HorasState extends State<Assistencia24Horas> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Eventos e Sinistros',
      rota: '',
    );
  }

  Widget _corpo(Size size) {
    return CustomList(
      ativa: true,
      height: size.height,
      size: size,
      widget: Container(
        child: Column(
          children: [
            RotasImagens(
                h: 0.4, w: 1, image: AssetImage('assets/indique.jpeg')),
            SizedBox(
              height: size.height * 0.05,
            ),
            AssitenciaCampos(size),
          ],
        ),
      ),
    );
  }
}
