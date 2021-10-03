import 'package:flutter/material.dart';
import 'package:neo/components/componentes_globais/componentes_temas/cores.dart';
import 'package:neo/components/componentes_globais/custom_list.dart';
import 'package:neo/widgets/ajuda_chat_card.dart';

class AjudaPage extends StatelessWidget {
  const AjudaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02, horizontal: size.width * 0.05),
            child: Container(
                height: size.height * 0.05,
                decoration: BoxDecoration(
                    color: AppCores.ROXOPRINCIPAL,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
                  child: Center(
                    child: Text(
                      'Chats',
                      style: TextStyle(
                          fontSize: 20,
                          color: AppCores.BRANCO,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
          ),
          Expanded(
              child: Container(
            width: size.width * 0.9,
            height: size.height * 0.85,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(List.generate(
                    1,
                    (i) => Column(
                      children: [
                        AjudaChatCard(size, 'Alisha Mala',
                            'Good Night You Take Care', '12:30 AM', '3'),
                        AjudaChatCard(size, 'John Smith',
                            'Good Night You Take Care', '12:30 AM', '3'),
                        AjudaChatCard(size, 'Sadia Mahmud',
                            'Good Night You Take Care', '12:30 AM', '3'),
                        AjudaChatCard(size, 'Esrat Jahan',
                            'Good Night You Take Care', '12:30 AM', '3'),
                        AjudaChatCard(size, 'John Smith',
                            'Good Night You Take Care', '12:30 AM', '3'),
                        AjudaChatCard(size, 'John Smith',
                            'Good Night You Take Care', '12:30 AM', '3'),
                        AjudaChatCard(size, 'Sornali Hasin',
                            'Good Night You Take Care', '12:30 AM', '3'),
                        AjudaChatCard(size, 'John Smith',
                            'Good Night You Take Care', '12:30 AM', '3'),
                      ],
                    ),
                  ).toList()),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
