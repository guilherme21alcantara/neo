//@dart=2.9
import 'package:flutter/cupertino.dart';

class CustomList extends StatelessWidget {
  final Size size;
  final double height;
  final Widget widget;
  final bool ativa;
  const CustomList(
      {Key key,
      this.size,
      this.height,
      this.widget,
      this.ativa})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.85,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(List.generate(
              1,
              (i) => Column(
                children: 
                [
                  if (ativa)widget
                  ],
              ),
            ).toList()),
          ),
        ],
      ),
    );
  }
}
