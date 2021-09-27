import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/Screen/componentes_globais/rotas_imagens/rotas_cotacao.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/widgets_esqueceu_senha_campos.dart';

class EsqueceuSenhaPage extends StatefulWidget {
  const EsqueceuSenhaPage({Key? key}) : super(key: key);

  @override
  _EsqueceuSenhaPageState createState() => _EsqueceuSenhaPageState();
}

class _EsqueceuSenhaPageState extends State<EsqueceuSenhaPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
        conteudo: _corpo(size), title: 'Esqueci minha senha');
  }

  Widget _corpo(Size size) {
    return CustomList(
      height: size.height,
      size: size,
      ativa: true,
      widget: Column(
        children: [
          RotasImagens(
              h: 0.33,
              image: AssetImage(
                RoutesImagensCotacao.CADASTRO,
              )),
          camposEsqueceuSenha(size, context),
        ],
      ),
    );
  }
}
