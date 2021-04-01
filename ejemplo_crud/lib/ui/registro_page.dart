import 'package:ejemplo_crud/pages/drawer.dart';
import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  

  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Text('Entradas / Salidas'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
         
          child: Text(
            'Aquí se mostraran los registros de entradas y salidas, que obtendremos directamente de firebase, una vez siendo almacenadas desde el arduino', style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.center,
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}