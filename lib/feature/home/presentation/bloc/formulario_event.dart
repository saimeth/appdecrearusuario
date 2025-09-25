part of 'formulario_bloc.dart';

@immutable
sealed class FormularioEvent extends Equatable {
  const FormularioEvent();

  @override
  List<Object> get props => [];
}
final class Boton extends FormularioEvent{}