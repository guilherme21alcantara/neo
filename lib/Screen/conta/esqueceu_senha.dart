import 'package:flutter/material.dart';
import 'package:neo/Routes/app_routes.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/componentes_temas/imagens.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/popups/popup_simples.dart';
import 'package:neo/components/componentes_globais/rotas_imagens/rotas_cotacao.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';

import 'package:neo/widgets/esqueceu_senha_campos.dart';

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
      conteudo: _corpo(size),
      title: 'Esqueci minha senha',
      rota: Routes.LOGINPAG,
    );
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
                    builder: (BuildContext context) => PopUpSimples(
                            size,
                            'Recuperação de senha enviada',
                            'Foi enviado um email para você seguir as instruções e recuperar a sua senha.',
                            'OK', () {
                          Navigator.pop(context, 'OK');
                        })),
              ),
            ),
          )),
    );
  }
}
