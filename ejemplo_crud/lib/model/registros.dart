//import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
class Post {
  String _nombre;
  String _dentro;
  Post(this._nombre,this._dentro);

 
 Post.map(dynamic obj){
    this._nombre = obj ['Nombre de Usuario'];
    this._dentro = obj ['Status'];
  }
  String get nombre => _nombre;
  String get dentro => _dentro;

  Post.fromSnapShot(DataSnapshot snapshot){
    _nombre = snapshot.value['Nombre Usuario'];
    _dentro = snapshot.value['status'];
  
  }
}