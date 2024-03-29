//@dart=2.9
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:neo/Screen/carrosel/paginas_carrosel/FirstCarrosel.dart';
import 'package:neo/Screen/carrosel/paginas_carrosel/SecondCarrosel.dart';
import 'package:neo/Screen/carrosel/paginas_carrosel/Thrid.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          CarouselSlider(
            items: [FirstCarrosel(), SecondCarrosel(), ThridCarrosel()],
            options: CarouselOptions(
              height: 874.0,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1,
            ),
          ),
        ],
      ),
    );
  }
}
