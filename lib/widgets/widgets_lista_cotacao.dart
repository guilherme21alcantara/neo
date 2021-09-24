//@dart=2.9
import 'package:flutter/material.dart';
import 'package:neo/widgets/widgets_cadastro_campos.dart';
import 'package:neo/widgets/widgets_cadastro_visual.dart';

Widget lista(Size size) {
    return Container(
      width: size.width,
      height: size.height * 0.85,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(List.generate(
              1,
              (i) => Column(
                children: [
                  Column(
                    children: [
                      visual(size),
                       SizedBox(height: size.height * 0.03),
                       campos(size)
                      ],
                  )
                ],
              ),
            ).toList()),
          ),
        ],
      ),
    );
  }