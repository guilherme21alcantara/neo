import 'package:flutter/material.dart';
import 'package:neo/Screen/componentes_globais/componentes_temas/cores.dart';

class NeoBanner extends StatelessWidget {
  final Size size;
  const NeoBanner({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.04,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Minha Neo',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all<Color?>(AppCores.BRANCO)),
            onPressed: () {},
            child: Text(
              'Ver Tudo+',
              style: TextStyle(
                color: AppCores.PRETO,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
