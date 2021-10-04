import 'package:flutter/material.dart';

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/loading.png', fit: BoxFit.cover,)
    );
  }
}
