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
     /* appBar: AppBar(
        centerTitle: true,
        title: Text('Checking With Technology', style: TextStyle(color: Colors.yellowAccent,)),
        backgroundColor: Colors.black,
      ),*/
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBAr(),
             SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 10.0,),
                     new Image.asset(
              'assets/logo3.jpg',
              width: 800.0,
              height: 600.0,
                     ),
              
                    Text(
            '* Aplicación que registra, modifica y elimina datos de usuarios.',
            style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.center,
          
          ),
          Divider(),
          Divider(),
          Text(
            '* Muestra la actividad de entradas y salidas.',
            style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.center,),
                ]),
          ),
          ],
      ),
     
      backgroundColor: Colors.black
    );
  }
}

 Widget _crearAppBAr( )
  {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.black,
      expandedHeight: 180.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
      title: Text('CHECKING WITH TECHNOLOGY',
      style: TextStyle(color: Colors.yellowAccent, fontSize: 18.0),
      ),
       background:(
         Image.asset('assets/logo5.jpg')
       ), 
      ),
    );
  }