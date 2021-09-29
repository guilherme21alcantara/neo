import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/custom_list.dart';
import 'package:neo/Screen/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/login_campos.dart';
import 'package:neo/widgets/login_visual.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(conteudo: _corpo(size), title: 'Entrar');
  }

  Widget _corpo(Size size) {
    return CustomList(
      height: size.height,
      size: size,
      ativa: true,
      widget: Column(
        children: [visualLogin(size), camposLogin(size)],
      ),
    );
  }
}
