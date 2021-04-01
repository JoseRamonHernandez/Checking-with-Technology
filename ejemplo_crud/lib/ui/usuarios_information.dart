import 'package:ejemplo_crud/pages/drawer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:ejemplo_crud/model/usuarios.dart';

class UsuariosInformation extends StatefulWidget {
  final Usuarios usuarios;
  UsuariosInformation(this.usuarios);

  @override
  _UsuariosInformationState createState() => _UsuariosInformationState();
}

final  usuariosReference = FirebaseDatabase.instance.reference().child('usuarios');

class _UsuariosInformationState extends State<UsuariosInformation> {

List<Usuarios> items;

@override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Text('Informacion de los Usuarios'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: 400.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
            children: <Widget>[
              new Text("Cedula: ${widget.usuarios.cedula}", style: TextStyle(fontSize: 18.0),),
              Padding(padding: EdgeInsets.only(top: 8.0),),
              Divider(), 
              new Text("Nombre: ${widget.usuarios.nombre}", style: TextStyle(fontSize: 18.0),),
              Padding(padding: EdgeInsets.only(top: 8.0),),
              Divider(),
              new Text("Apellidos: ${widget.usuarios.apellidos}", style: TextStyle(fontSize: 18.0),),
              Padding(padding: EdgeInsets.only(top: 8.0),),
              Divider(),
              new Text("Dirección: ${widget.usuarios.direccion}", style: TextStyle(fontSize: 18.0),),
              Padding(padding: EdgeInsets.only(top: 8.0),),
              Divider(),
              new Text("Teléfono: ${widget.usuarios.telefono}", style: TextStyle(fontSize: 18.0),),
              Padding(padding: EdgeInsets.only(top: 8.0),),
              Divider(),
            ],
            ),
          ),
        )
      ),
      
    );
  }
}