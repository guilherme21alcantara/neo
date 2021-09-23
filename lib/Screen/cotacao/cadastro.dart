//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/Screen/componentes_globais/inputs/input_texto.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_cotacao.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/Screen/componentes_globais/textos_header_componentes/titulo.dart';
import 'package:neo/Screen/texto_globais/textos_gerais/titulos/titulos.dart';

class CotarCadastro extends StatefulWidget {
  const CotarCadastro({Key key}) : super(key: key);

  @override
  _CotarCadastroState createState() => _CotarCadastroState();
}

class _CotarCadastroState extends State<CotarCadastro> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: Container
      (
        child: Column(children: 
        [
           RotasImagens(h: 0.35 ,image: AssetImage(RoutesImagensCotacao.CADASTRO,)),
           Titulo(h:0.06,r: 0.26,titulo: TITULOS.TITULO,font: 26, cor: AppCores.ROXOPRINCIPAL),
           
           InputTexto(text: 'as',size: size*1.12, h: 0.02, v:0.075)

           
        ],),
      ),
    );
  }
}
