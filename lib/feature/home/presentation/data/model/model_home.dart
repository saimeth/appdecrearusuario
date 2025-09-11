import 'package:equatable/equatable.dart';


class Info extends Equatable {
  final String nombre;
  final String correo;
  final String? telefono;
  final int? edad;
  final String? direccion;
  final String? profesion;

  const Info({
    required this.nombre,
    required this.correo,
    required this.telefono,
    required this.edad,
    required this.direccion,
    required this.profesion
  });

  @override
  List<Object?> get props => [
    nombre, 
    correo,
    telefono,
    edad,
    direccion,
    profesion];

  factory Info.fromJson(Map<String, dynamic> json){
    return Info(
      nombre: json["formulario"]?["nombre"] as String,
      correo: json["formulario"]?["correo"] as String,
      telefono: json["formulario"]?["felefono"]as String,
      edad: json["formulario"]?["edad"] as int,
      direccion: json["formulario"]?["direccion"]as String,
      profesion: json["formulario"]?["profesion"] as String
    );
  }
}

