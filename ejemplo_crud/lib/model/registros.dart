//import 'package:flutter/material.dart';

class Post {
  String nombre;
  String dentro;
  Post(this.nombre,this.dentro);

  Post.fromJson(var value){
    this.nombre = value['Usuario'];
    this.dentro = value['Ingreso'];
  }

}