//import 'dart:html';

import 'package:ejemplo_crud/pages/drawer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:ejemplo_crud/model/usuarios.dart';

import 'listview_usuarios.dart';

class UsuariosScreen extends StatefulWidget {
  final Usuarios usuarios;
  UsuariosScreen(this.usuarios);

  @override
  _UsuariosScreenState createState() => _UsuariosScreenState();
}

final  usuariosReference = FirebaseDatabase.instance.reference().child('usuarios');

class _UsuariosScreenState extends State<UsuariosScreen> {

List<Usuarios> items;

//NumberInputElement _numUsuarioController;
TextEditingController _numUsuarioController;
TextEditingController _nombreController;
TextEditingController _apellidosController;
TextEditingController _direccionController;
TextEditingController _telefonoController;
TextEditingController _statusController;

@override
void initState() { 
  super.initState();
  _numUsuarioController = new TextEditingController(text: widget.usuarios.numUsuario);
 _nombreController = new TextEditingController(text: widget.usuarios.nombre);
 _apellidosController = new TextEditingController(text: widget.usuarios.apellidos);
 _direccionController = new TextEditingController(text: widget.usuarios.direccion);
 _telefonoController = new TextEditingController(text: widget.usuarios.telefono);
 _statusController = new TextEditingController(text: widget.usuarios.status);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Usuario'),
        backgroundColor: Colors.black,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBAr(),
             SliverList(
            delegate: SliverChildListDelegate([
         Card(
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _numUsuarioController,
                  style: TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                  decoration: InputDecoration(icon: Icon(Icons.attribution_outlined),
                  labelText: 'Numero de Usuario'),
                ),
                Padding(padding: EdgeInsets.only(top: 8.0),),
                Divider(),
                TextField(
                  controller: _nombreController,
                  style: TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                  decoration: InputDecoration(icon: Icon(Icons.person),
                  labelText: 'Nombre'),
                ),
                Padding(padding: EdgeInsets.only(top: 8.0),),
                Divider(),
                TextField(
                  controller: _apellidosController,
                  style: TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                  decoration: InputDecoration(icon: Icon(Icons.article_sharp),
                  labelText: 'Apellidos'),
                ),
                Padding(padding: EdgeInsets.only(top: 8.0),),
                Divider(),
                TextField(
                  controller: _direccionController,
                  style: TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                  decoration: InputDecoration(icon: Icon(Icons.add_location_alt_sharp),
                  labelText: 'Dirección'),
                ),
                Padding(padding: EdgeInsets.only(top: 8.0),),
                Divider(),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _telefonoController,
                  style: TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                  decoration: InputDecoration(icon: Icon(Icons.contact_phone_sharp),
                  labelText: 'Teléfono'),
                ),
                Divider(),
                TextField(
                  controller: _statusController,
                  style: TextStyle(fontSize: 17.0, color: Colors.deepOrangeAccent),
                  decoration: InputDecoration(icon: Icon(Icons.contact_phone_sharp),
                  labelText: 'Estatus de Acceso'),
                ),
                Padding(padding: EdgeInsets.only(top: 8.0),),
               
                
                FlatButton(onPressed: (){
                  if(widget.usuarios.id != null){
                    usuariosReference.child(widget.usuarios.id).set({
                    'numero de usuario': _numUsuarioController.text,
                    'nombre': _nombreController.text,
                    'apellidos': _apellidosController.text,
                    'direccion': _direccionController.text,
                    'telefono': _telefonoController.text,  
                    'status': _statusController.value.text,
                    }).then((_){
                      Navigator.pop(context);
                    });
                  }
                  else{
                    usuariosReference.push().set({
                      'numero de usuario': _numUsuarioController.text,
                    'nombre': _nombreController.text,
                    'apellidos': _apellidosController.text,
                    'direccion': _direccionController.text,
                    'telefono': _telefonoController.text ,
                    'status': _statusController.text,
                    }).then((_){
                      Navigator.pop(context);
                    });
                  }
                }, 
                child: (widget.usuarios.id != null) ? Text('Actualizar') : Text('Añadir')),
              ],
            ),
          ),
          borderOnForeground: true,
        ),
            ]),
             ),
        ],
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
      
          
          
      backgroundColor: Colors.white,
    );
  }
}
Widget _crearAppBAr( )
  {
    return SliverAppBar(
      elevation: 1.0,
      backgroundColor: Colors.blueGrey,
      expandedHeight: 100.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
      title: Text('Usuario',
      style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
       
      ),
    );
  }