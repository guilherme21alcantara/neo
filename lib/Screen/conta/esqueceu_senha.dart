import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:neo/Screen/componentes_globais/componentes_botao/botao_geral.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';
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
          camposEsqueceuSenha(size),
          _botao(size)
        ],
      ),
    );
  }

  Widget _botao(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: Container(
          height: size.height * 0.05,
          decoration: BoxDecoration(
              border: Border.all(color: AppCores.ROXOPRINCIPAL, width: 4),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Center(
              child: TextButton(
                child: Text(
                  'Enviar',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppCores.ROXOPRINCIPAL,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text('Recuperação de senha enviada'),
                    content: Padding(
                      padding: EdgeInsets.only(
                          bottom: size.height * 0.01, top: size.height * 0.01),
                      child: Text(
                          'Foi enviado um email para você seguir as instruções e recuperar a sua senha.'),
                    ),
                    actions: <Widget>[
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: size.width * 0.05,
                            right: size.width * 0.05,
                            bottom: size.height * 0.03,
                          ),
                          child: Container(
                            height: size.height * 0.05,
                            width: size.width,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppCores.ROXOPRINCIPAL, width: 4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: TextButton(
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppCores.ROXOPRINCIPAL,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () => Navigator.pop(context, 'OK')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
