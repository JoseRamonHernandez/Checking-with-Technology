/*import 'package:ejemplo_crud/pages/drawer.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:firebase_database/ui/firebase_list.dart';
//import 'package:firebase_database/ui/firebase_sorted_list.dart';
import 'package:flutter/material.dart';
import 'package:ejemplo_crud/model/registros.dart';

class RegistroPage extends StatefulWidget {
  

  @override
  _RegistroPageState createState() => _RegistroPageState();
}
//final  registrosReference = FirebaseDatabase.instance.reference().child('Registros');

class _RegistroPageState extends State<RegistroPage> {
  List <Post> list=new List();
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
       drawer: DrawerPage(),
    appBar: new AppBar(
      title: new Text("Data"),
    ),
     body: new Container(
      child:new Center(
        child: StreamBuilder(
          stream: FirebaseDatabase.instance.collection('{Registros}').snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) return CircularProgressIndicator();
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (BuildContext context, int index) {
                return new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[index].nombre),
                      new Text(snapshot.data.documents[index].dentro)
                    ],
                  ),
                );
              }
            );
          }
        )
      )
    )
  );
  }
}*/
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