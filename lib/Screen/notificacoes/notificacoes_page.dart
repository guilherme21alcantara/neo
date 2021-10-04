import 'package:flutter/material.dart';
import 'package:neo/widgets/notificacoes_card.dart';

class NotificacoesPage extends StatelessWidget {
  const NotificacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
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
                        NotificacoesCard(
                          size,
                          'John Smith',
                          'Confirmed your payment \$50 Deposit',
                          '12.00 AM',
                          '20 Feb, 2020',
                        ),
                        NotificacoesCard(
                          size,
                          'John Smith',
                          'Please Pay for January Payment Deposit',
                          '12.00 AM',
                          '20 Feb, 2020',
                        ),
                        NotificacoesCard(
                          size,
                          'John Smith',
                          'Conﬁrmed Your Payment Deposit',
                          '12.00 AM',
                          '20 Feb, 2020',
                        ),
                        NotificacoesCard(
                          size,
                          'John Smith',
                          'Conﬁrmed Your Payment Deposit',
                          '12.00 AM',
                          '20 Feb, 2020',
                        ),
                        NotificacoesCard(
                          size,
                          'John Smith',
                          'Conﬁrmed Your Payment Deposit',
                          '12.00 AM',
                          '20 Feb, 2020',
                        ),
                        NotificacoesCard(
                          size,
                          'John Smith',
                          'Conﬁrmed Your Payment Deposit',
                          '12.00 AM',
                          '20 Feb, 2020',
                        ),
                        NotificacoesCard(
                          size,
                          'John Smith',
                          'Confirmed your payment Deposit',
                          '12.00 AM',
                          '20 Feb, 2020',
                        ),
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
