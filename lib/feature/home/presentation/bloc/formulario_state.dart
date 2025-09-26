part of 'formulario_bloc.dart';

@immutable
sealed class FormularioState extends Equatable {
  const FormularioState();
   @override
  List<Object> get props => [];
}
  


class Inicio extends FormularioState{}
class Carga extends FormularioState{}
class Error extends FormularioState{}
class Home extends FormularioState{
  final Info info;
  const Home(this.info);

  @override
  List<Object> get props => [info];
}
  