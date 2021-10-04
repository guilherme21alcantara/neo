import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/components/componentes_globais/scaffold_principal.dart';
import 'package:neo/widgets/add_endereco_form.dart';

class AddEnderecoPage extends StatelessWidget {
  const AddEnderecoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return ScaffoldPrincipal(
      conteudo: _corpo(size),
      title: 'Endereços',
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
          children: [AddEnderecoForm(size, 'John Smith')],
        ),
      ),
    );
  }
}
