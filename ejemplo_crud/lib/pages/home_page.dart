import 'package:flutter/material.dart';

import 'drawer.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Checking With Technology', style: TextStyle(color: Colors.yellowAccent,)),
        backgroundColor: Colors.black,
      ),
      body: Center(
              child: Container(
                child: Column(
                  children: [
                     new Image.asset(
              'assets/logo3.jpg',
              width: 473.0,
              height: 432.0,
                     ),
              Divider(),
              Divider(),
                    Text(
            '* Aplicación que registra, modifica y elimina datos de empleados.',
            style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.center,
          
          ),
          Divider(),
          Divider(),
          Text(
            '* Muestra registro de entradas y salidas.',
            style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.center,
          
          ),
                  ],
                ),
        ),
      ),
     
      backgroundColor: Colors.black
    );
  }
}