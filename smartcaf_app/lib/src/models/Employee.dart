import 'package:flutter/cupertino.dart';

class Employee {
  String nombres;
  String apellidos;
  String correo;
  String estado;
  int id;
  String telefono;
  String tipoIdentificacion;

  Employee(this.nombres, this.apellidos, this.correo, this.estado, this.id,
      this.telefono, this.tipoIdentificacion);

  setNombre(String nombres) {this.nombres = nombres;}
  setAnimal(String apellidos) {this.apellidos = apellidos;}
  setCorreo(String correo) {this.correo = correo;}
  setEstado(String estado) {this.estado = estado;}
  setId(int id) {this.id = id;}
  setTelefono(String telefono) {this.telefono = telefono;}
  setTipoIdentificacion(String tipoIdentificacion) {this.tipoIdentificacion = tipoIdentificacion;}
}