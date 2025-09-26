import 'package:app/feature/home/presentation/data/model/model_home.dart';
import 'package:app/feature/home/presentation/data/model/service_home.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'formulario_event.dart';
part 'formulario_state.dart';

class FormularioBloc extends Bloc<FormularioEvent, FormularioState> {
  final ServiceHome service;

  FormularioBloc(this.service) : super(Inicio()) {
    on<EnviarFormulario>((event, emit) async {
      emit (Carga());

      try {
        final info = await service.infoFormulario(
          nombre: event.nombre,
          correo: event.correo,
          contrasena: event.contrasena,
        );
      emit(Home(info));
      }catch (e){
        emit(Error());
      }
    });
  }
}
