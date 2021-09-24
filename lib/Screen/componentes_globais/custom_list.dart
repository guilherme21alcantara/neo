import 'package:flutter/cupertino.dart';

class CustomList extends StatelessWidget {
  final Size size;
  final double height;
  final Widget widget;
  const CustomList(
      {Key? key,
      required this.size,
      required this.height,
      required this.widget})
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
                children: [widget],
              ),
            ).toList()),
          ),
        ],
      ),
    );
  }
}
