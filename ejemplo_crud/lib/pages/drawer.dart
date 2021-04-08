import 'package:ejemplo_crud/model/usuarios.dart';
import 'package:ejemplo_crud/ui/creditos_page.dart';
import 'package:ejemplo_crud/ui/listview_usuarios.dart';
import 'package:ejemplo_crud/ui/registro_page.dart';
import 'package:ejemplo_crud/ui/usuarios_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';



class DrawerPage extends StatelessWidget {
  
  List<Usuarios> items;
  @override
  Widget build(BuildContext context) {
    {
    return Drawer(
      
         child: Container(
           color: Colors.black87,
           child: ListView(
             
             padding: EdgeInsets.zero,
             children: <Widget>[
               //Divider(),
               DrawerHeader(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              
              image: AssetImage('assets/logo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
               ),

               
               Divider(),
              Divider(),
               ListTile(
                 leading: Icon(Icons.home,color: Color(0xffFFDA0A),size: 35,),
                 title: Text('Inicio',
                 style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
                 
                 onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                   builder: (BuildContext context) => HomePage(),
                 ))
               ),
               Divider(),
               ListTile(
                 leading: Icon(Icons.supervised_user_circle,color: Color(0xffFFDA0A),size: 35,),
                 title: Text('Usuarios',
                 style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
                 
                 onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                   builder: (BuildContext context) => ListViewUsuarios(),
                 ))
                 
               ),
               Divider(),
               ListTile(
                 leading: Icon(Icons.add_circle_outlined, color: Color(0xffFFDA0A),size: 35,),
                 title: Text('Agregar Usuario',
                 style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
                 
                 onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                   builder: (BuildContext context) => UsuariosScreen(Usuarios(null, '','','','','')),
                 ))
               ),
                Divider(),
               ListTile(
                 leading: Icon(Icons.close_fullscreen_outlined, color: Color(0xffFFDA0A),size: 35,),
                 title: Text('Entradas/Salidas',
                 style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
                 
                 onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                   builder: (BuildContext context) => RegistroPage(),
                 ))
                 
               ),
               Divider(),
               ListTile(
                 leading: Icon(Icons.account_tree_outlined, color: Color(0xffFFDA0A),size: 35,),
                 title: Text('Créditos',
                 style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
                 
                 onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                   builder: (BuildContext context) => CreditosPage(),
                 ))
                 
               )
               /*  SizedBox(
                   width: 500.0,
                    height: 0.0,
                   child:  ListTile(
                 leading: Icon(Icons.alt_route_outlined, color: Color(0xffFFDA0A),size: 35,),
                 title: Text('Créditos',
                 style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
                 
                 onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                   builder: (BuildContext context) => RegistroPage(),
                 ))
                 
               ),
                ),*/
              
             ],
             
             
           ),
         ),
        
         
       );
     }
  }
}