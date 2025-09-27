
import 'package:app/feature/home/presentation/data/model/model_home.dart';
import 'package:app/feature/home/presentation/data/model/service_home.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final ServiceHome service;
  HomeCubit(this.service) : super(HomeInitial());

  Future<void> traerInformacion() async{
    emit(HomeCarga());
    try{
      final info = await service.obtenerInfo();
      emit(HomeCargado(info));
    } catch (e){
      emit(HomeError());
    }
  }
}
