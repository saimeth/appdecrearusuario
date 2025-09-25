import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'formulario_event.dart';
part 'formulario_state.dart';

class FormularioBloc extends Bloc<FormularioEvent, FormularioState> {

  final Dio dio;

  FormularioBloc() : super(FormularioInitial()) {
    on<Boton>((event, emit) async {
      emit (Carga());
      try {
        final Response = await dio.post("https://jsonblob.com/1420155535625478144#google_vignette");
        info:{
          "nombre"
        }
      }
    });
  }
}
