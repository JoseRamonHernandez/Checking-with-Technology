import 'package:ejemplo_crud/pages/drawer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';
import 'package:ejemplo_crud/ui/usuarios_screen.dart';
import 'package:ejemplo_crud/ui/usuarios_information.dart';
import 'package:ejemplo_crud/model/usuarios.dart';

class ListViewUsuarios extends StatefulWidget {

  @override
  _ListViewUsuariosState createState() => _ListViewUsuariosState();
}

final usuariosReference = FirebaseDatabase.instance.reference().child('usuarios');   

class _ListViewUsuariosState extends State<ListViewUsuarios> {
 List<Usuarios> items;
StreamSubscription<Event> _agregarUsuarios;
StreamSubscription<Event> _editarUsuarios;

@override

  void initState() {
    
    super.initState();
    items = new List();
  _agregarUsuarios = usuariosReference.onChildAdded.listen(_agregar);
  _editarUsuarios = usuariosReference.onChildChanged.listen(_editar);
  }

@override
  void dispose() {
    super.dispose();
    _agregarUsuarios.cancel();
  _editarUsuarios.cancel();
  }

@override
Widget build(BuildContext context){
  return MaterialApp(
  debugShowCheckedModeBanner: false,

    title: 'Usuarios',
    home: Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Text('Usuarios'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView.builder(itemCount: items.length,
        padding: EdgeInsets.only(top: 12.0),
        itemBuilder: (context, position){
          return Column(
            children: <Widget>[
              Divider (height: 7.0,),
              Row(
                children: <Widget>[
                  Expanded(child: ListTile(title: Text('${items[position].cedula}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.0,
                  ),),
                  subtitle: Text('${items[position].nombre}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.0,
                  ),
                  ),
                    leading: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.amberAccent,
                          radius: 17.0,
                          child: Text('${position + 1}',
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 21.0,
                           ),),
                        )
                      ],
                    ),
                    onTap: () => _navigateToUsuariosInformation(context, items[position])),),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red), onPressed: () => _deleteUsuarios(context, items[position], position )),
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.blueAccent), onPressed: () => _navigateToUsuarios(context, items[position])),
                ],
                )
            ],
            );
        },
        ),
      ),
     /* floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: () => _createNewUsuario(context),
        
      ),*/
      backgroundColor: Colors.black,
    ),
    
  );
}

 
  


void _agregar(Event event)
{
setState(() {
  items.add(new Usuarios.fromSnapShot(event.snapshot));
});
}

void _editar(Event event)
{
var oldUsuarioValue = items.singleWhere((usuarios) => usuarios.id == event.snapshot.key);
setState(() {
  items[items.indexOf(oldUsuarioValue)] = new Usuarios.fromSnapShot(event.snapshot);
});
}

void _deleteUsuarios(BuildContext context, Usuarios usuarios, int position )async{
await usuariosReference.child(usuarios.id).remove().then((_){
setState((){
  items.removeAt(position);
});
});
}

void _navigateToUsuariosInformation(BuildContext context, Usuarios usuarios)async{
await Navigator.push(context,
MaterialPageRoute(builder: (context) => UsuariosScreen(usuarios)),);

}

void _navigateToUsuarios(BuildContext context, Usuarios usuarios)async{
await Navigator.push(context,
MaterialPageRoute(builder: (context) => UsuariosInformation(usuarios)),);

}

/*void _createNewUsuario(BuildContext context)async{
await Navigator.push(context,
MaterialPageRoute(builder: (context) => UsuariosScreen(Usuarios(null, '','','','',''))),);

}*/
}