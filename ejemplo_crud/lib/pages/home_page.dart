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
         
          child: Text(
            'Aplicación que registra, modifica y elimina datos de empleados y muestra registro de entradas y salidas.',
            style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.center,
          ),
        ),
      ),
      backgroundColor: Colors.black
    );
  }
}