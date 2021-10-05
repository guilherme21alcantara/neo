import 'package:flutter/material.dart';
import 'componentes_temas/cores.dart';

class SliderBar extends StatefulWidget {
  final int min;
  final int max;
  final Size size;
  final int divisions;
  final String txt;
  const SliderBar(
      {Key? key,
      required this.min,
      required this.max,
      required this.size,
      required this.divisions,
      required this.txt})
      : super(key: key);

  @override
  _SliderBarState createState() => _SliderBarState();
}

class _SliderBarState extends State<SliderBar> {
  late int _currentSliderValue = widget.min;
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Container(
      color: AppCores.BRANCO,
      height: size.height * 0.175,
      width: size.width * 0.9,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: widget.size.height * 0.02),
        child: Container(
          height: widget.size.height * 0.15,
          width: widget.size.width,
          child: Column(
            children: [
              Container(
                width: size.width * 0.8,
                child: Text(
                  widget.txt,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            Slider(
              activeColor: AppCores.ROXOPRINCIPAL,
              inactiveColor: AppCores.CINZA,
              value: _currentSliderValue.toDouble(),
              min: widget.min.toDouble(),
              max: widget.max.toDouble(),
              divisions: widget.divisions,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value.toInt();
                });
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: widget.size.width * 0.6, ),
              child: 
              Row(children: 
              [
                Text(
                'R\$',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if(_currentSliderValue <1000)Text(
                '$_currentSliderValue'',00',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              ],),
              
            ),
          ],

          ),
        ),
      ),
    );
  }
}
