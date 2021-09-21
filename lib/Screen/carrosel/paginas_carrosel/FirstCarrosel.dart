import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:neo/Screen/componentes_globais.dart/textos_gerais.dart/textos.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.5,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/carrosel1.png'), fit: BoxFit.contain),
            ),
          ),
          Expanded(
              child: Container(
              height: size.height * 0.3,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: HexColor('#7f47fa')),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.08),
                  child: Text(
                    STRING.CADASTRO,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: Container(
                    height: size.height * 0.105,
                    width: size.width * 0.9,
                    child: Text(
                      'A primeira Seguradora Digital que protege seu veículo de forma completa, sem burocracia e com balores que cabem no seu bolso!',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.04),
                  child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.7,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color?>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ))),
                        child: Text(
                          'Cotar Seguro',
                          style: TextStyle(
                              fontSize: 18, color: HexColor('#7f47fa')),
                        ),
                        onPressed: () {},
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.03),
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.7,
                    child: TextButton(
                        child: Text(
                          'Já possui uma conta? Entrar !',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                        onPressed: () {}),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.4,
                    child: Row(
                      children: [
                        Container(
                          height: size.height * 0.025,
                          width: size.width * 0.15,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        Container(
                          height: size.height * 0.025,
                          width: size.width * 0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        Container(
                          height: size.height * 0.025,
                          width: size.width * 0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}