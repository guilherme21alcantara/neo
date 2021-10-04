import 'package:flutter/material.dart';

import 'componentes_temas/cores.dart';

class ScaffoldHome extends StatefulWidget {
  final List<Widget> conteudo;
  final String title;
  const ScaffoldHome({
    Key? key,
    required this.conteudo,
    required this.title,
  }) : super(key: key);

  @override
  _ScaffoldHomeState createState() => _ScaffoldHomeState();
}

class _ScaffoldHomeState extends State<ScaffoldHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    return Scaffold(
      backgroundColor: AppCores.BACKGROUND,
      appBar: AppBar(
        toolbarHeight: size.height * 0.08,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(color: AppCores.PRETO, fontWeight: FontWeight.w800),
        ),
        backgroundColor: AppCores.BRANCO,
        leading: Padding(padding: EdgeInsets.only(left: 10),child:Image.asset('assets/icon_header.png', fit: BoxFit.cover,)),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: AppCores.PRETO,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        unselectedItemColor: AppCores.CINZA,
        unselectedLabelStyle: TextStyle(color: AppCores.CINZA),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Meu Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Ajuda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: 'Notificações',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppCores.ROXOPRINCIPAL,
        onTap: _onItemTapped,
      ),
      body: widget.conteudo[_selectedIndex],
    );
  }
}
