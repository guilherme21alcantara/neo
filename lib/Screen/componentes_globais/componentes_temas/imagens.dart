//@dart=2.9
import 'package:flutter/widgets.dart';

class RotasImagens extends StatelessWidget {
  final AssetImage image;
  final double h;
  final double w;
  const RotasImagens({this.image, this.h, this.w});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Container(
      height: size.height * h,
      width: w != null ? size.width * w : size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: image, fit: BoxFit.contain),
      ),
    );
  }
}
