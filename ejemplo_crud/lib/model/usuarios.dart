//import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


class Usuarios {
  String _id;
  String _cedula;
  String _nombre;
  String _apellidos;
  String _direccion;
  String _telefono;

  Usuarios(this._id, this._cedula, this._nombre, this._apellidos, this._direccion, this._telefono);

  Usuarios.map(dynamic obj){
    this._cedula = obj ['cedula'];
    this._nombre = obj ['nombre'];
    this._apellidos = obj ['apellidos'];
    this._direccion = obj ['direccion'];
    this._telefono = obj ['telefono'];
  }
  String get id => _id;
  String get cedula => _cedula;
  String get nombre => _nombre;
  String get apellidos => _apellidos;
  String get direccion => _direccion;
  String get telefono => _telefono;

  Usuarios.fromSnapShot(DataSnapshot snapshot){
    _id = snapshot.key;
    _cedula = snapshot.value['cedula'];
    _nombre = snapshot.value['nombre'];
    _apellidos = snapshot.value['apellidos'];
    _direccion = snapshot.value['direccion'];
    _telefono = snapshot.value['telefono'];
  }
}