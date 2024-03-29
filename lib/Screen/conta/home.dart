import 'package:flutter/material.dart';
import 'package:neo/Screen/ajuda/ajuda_page.dart';
import 'package:neo/Screen/notificacoes/notificacoes_page.dart';
import 'package:neo/Screen/perfil/perfil_page.dart';

import 'package:neo/components/componentes_globais/scaffold_home.dart';
import 'package:neo/widgets/home_conteudo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldHome(conteudo: [
      HomeConteudo(size: size),
      PerfilPage(),
      AjudaPage(),
      NotificacoesPage()
    ], title: 'Olá João');
  }
}
