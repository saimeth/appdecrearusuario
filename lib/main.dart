import 'dart:developer';

import 'package:app/feature/home/presentation/bloc/formulario_bloc.dart';
import 'package:app/feature/home/presentation/cubit/home_cubit.dart';
import 'package:app/feature/home/presentation/data/model/service_home.dart';
import 'package:app/feature/home/presentation/views/vista_carga.dart';
import 'package:app/feature/home/presentation/views/vista_error.dart';
import 'package:app/feature/home/presentation/views/vista_home.dart';
import 'package:app/feature/home/presentation/views/vista_inicial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final service = ServiceHome();
  runApp( MyApp(service: service));
}

class MyApp extends StatelessWidget {
  final ServiceHome service;
  const MyApp({super.key, required this.service});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FormularioBloc(service),
        ),
        BlocProvider(
          create: (context) => HomeCubit(service),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<FormularioBloc, FormularioState>(
          builder: (context, state) {
            if (state is Inicio) {
              return Vista_inicial();
            } else if (state is Carga) {
              return const Vista_carga();
            } else if (state is Home) {
              context.read<HomeCubit>().cargarInfo(state.info);
              return const Vista_home();
            } else if (state is Error) {
              return const Vista_error();
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}

