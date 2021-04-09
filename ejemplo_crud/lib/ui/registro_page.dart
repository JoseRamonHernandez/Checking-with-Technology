/*import 'package:ejemplo_crud/pages/drawer.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:firebase_database/ui/firebase_list.dart';
//import 'package:firebase_database/ui/firebase_sorted_list.dart';
import 'package:flutter/material.dart';
import 'package:ejemplo_crud/model/registros.dart';

import 'listview_usuarios.dart';

class RegistroPage extends StatefulWidget {
 

  @override
  _RegistroPageState createState() => _RegistroPageState();
}
//final  registrosReference = FirebaseDatabase.instance.reference().child('Registros');

class _RegistroPageState extends State<RegistroPage> {
 List<Post> items;

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
              new Text("Numero de Usuario: ${Post._dentro}", style: TextStyle(fontSize: 18.0),),
              Padding(padding: EdgeInsets.only(top: 8.0),),
              Divider(), 
              new Text("Nombre: ${dentro}", style: TextStyle(fontSize: 18.0),),
              Padding(padding: EdgeInsets.only(top: 8.0),),
              Divider(),
             
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
*/
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