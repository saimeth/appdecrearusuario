part of 'formulario_bloc.dart';

@immutable
sealed class FormularioEvent extends Equatable {
  const FormularioEvent();

  @override
  List<Object> get props => [];
}
final class EnviarFormulario extends FormularioEvent{
   final String nombre;
  final String correo;
  final String contrasena;

  EnviarFormulario({
    required this.nombre,
    required this.correo,
    required this.contrasena,
  });

  @override
  List<Object> get props => [nombre, correo, contrasena];
}