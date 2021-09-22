//@dart=2.9
import 'package:flutter/widgets.dart';

class RotasImagensCarrosel extends StatelessWidget
{
  final AssetImage image;
  const RotasImagensCarrosel({this.image});

  @override
  Widget build(BuildContext context) {
       var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
   return  Container(
            height: size.height * 0.5,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: image,
                  fit: BoxFit.contain),
            ),
          );
  }
}