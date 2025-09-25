import 'package:equatable/equatable.dart';


class Info extends Equatable {
  final String nombre;
  final String correo;
  final String contrasena;

  const Info({
    required this.nombre,
    required this.correo,
    required this.contrasena
  });

  @override
  List<Object?> get props => [
    nombre, 
    correo, 
    contrasena];

  factory Info.fromJson(Map<String, dynamic> json){
    return Info(
      nombre: json["nombre"] as String,
      correo: json["correo"] as String,
      contrasena: json["contrasena"] as String
    );
  }
}

