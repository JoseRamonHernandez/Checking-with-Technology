import 'package:ejemplo_crud/pages/drawer.dart';
import 'package:flutter/material.dart';

class CreditosPage extends StatefulWidget {
 

  @override
  _CreditosPageState createState() => _CreditosPageState();
}

class _CreditosPageState extends State<CreditosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
     /* appBar: AppBar(
        centerTitle: true,
        title: Text('Créditos'),
        
        backgroundColor: Colors.black,
      ),*/
       body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBAr(),
             SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 10.0,),
              Divider(),
              Divider(),
              Text(
                'Este proyecto fue desarrollado por:', style: TextStyle(fontSize: 28, color: Colors.white,), textAlign: TextAlign.center,
              ),
              Divider(),
              Divider(),
              Text(
                '* Juárez Soledad Dulce Concepción', style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.center,
              ),
              Divider(),
              Text(
                '* Tamayo Briones Víctor Manuel', style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.center,
              ),
              Divider(),
              Text(
                '* Hernández Muñoz José Ramón', style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.center,
              ),
              Divider(),
              Text(
                '* Colín Vásquez Felipe de Jesús', style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.center,
              ),
              Divider(),
              Divider(),
              Text(
                'Alumnos de la Universidad Tecnológica de Tlaxcala.', style: TextStyle(fontSize: 28, color: Colors.white,), textAlign: TextAlign.center,
              ),
              Divider(),
              Text(
                'T.S.U. Tecnologías de la Información Área Desarrollo de Software Multiplataforma', style: TextStyle(fontSize: 28, color: Colors.white,), textAlign: TextAlign.center,
              ),
              Divider(),
              Divider(),
              Text(
                'Del 5°A', style: TextStyle(fontSize: 28, color: Colors.white,), textAlign: TextAlign.center,
              ),
             
              new Image.asset(
              'assets/logo2.jpg',
              width: 600.0,
              height: 400.0,
                     ),
            ]),
          ),
          ],
      ),
     
      backgroundColor: Colors.black,
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
      title: Text('Créditos',
      style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
       background:(
         Image.asset('assets/img2.jpg')
       ), 
      ),
    );
  }