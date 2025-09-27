part of 'home_cubit.dart';

@immutable
sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState{}
class HomeCarga extends HomeState{}
class HomeError extends HomeState{}

class HomeCargado extends HomeState{
  final Info info;

  const HomeCargado(this.info);
  @override List<Object?> get props => [info]; }
