part of 'formulario_bloc.dart';

@immutable
sealed class FormularioState {}

final class FormularioInitial extends FormularioState {}


class Inicio extends FormularioState{}
class Carga extends FormularioState{}
class Error extends FormularioState{}
class Home extends FormularioState{}
