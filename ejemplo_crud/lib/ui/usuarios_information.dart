

import 'package:ejemplo_crud/pages/drawer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:ejemplo_crud/model/usuarios.dart';

import 'listview_usuarios.dart';

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
        centerTitle: true,
        title: Text('Informacion del Usuario',),
        
        backgroundColor: Colors.black,
      ),
      body: Container(
        
        color: Colors.black,
        height: 400.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(40.0),
         ),
          color: Colors.yellowAccent,
          child: Center(
            child: Column(
            children: <Widget>[
              Divider(),
              new Text("Numero de Usuario: ${widget.usuarios.numUsuario}", style: TextStyle(fontSize: 18.0),),
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
              Divider(),
               new Text("Estatus de entrada:", style: TextStyle(fontSize: 18.0),),
            //  if(widget.usuarios.status.toString() == '' )
             Icon(Icons.radio_button_checked_rounded, color: Colors.red,),
              
             
          //  if(widget.usuarios.status.toString() == 'true')
              Icon(Icons.radio_button_checked_rounded, color: Colors.green,),
             
             
              Padding(padding: EdgeInsets.only(top: 10.0),),
            ],
            
            ),
            
          ),
          
        )
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
                   builder: (BuildContext context) => ListViewUsuarios(),
                 ));
          // Add your onPressed code here!
        },
        child: const Icon(Icons.arrow_back_outlined, color: Colors.black,),
        backgroundColor: Colors.yellowAccent,
      ),
      backgroundColor: Colors.black,
    );
  }
}