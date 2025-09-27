import 'package:app/feature/home/presentation/cubit/home_cubit.dart';
import 'package:app/feature/home/presentation/views/vista_carga.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Vista_home extends StatelessWidget{
  const Vista_home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 225, 238), 
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Registro de Usuario'),
        backgroundColor: const Color.fromARGB(255, 194, 204, 252),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29uYXxlbnwwfHwwfHx8MA%3D%3D",
             width: 200,   
              height: 200, 
              fit: BoxFit.cover
            ),
            const SizedBox(height: 40),
            Container(
              height: 270,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 194, 204, 252),
                borderRadius: BorderRadius.circular(20),
              ),
              child: BlocConsumer<HomeCubit, HomeState>(
                listener: (context, state) {
                  if (state is HomeError) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Error al cargar la información')),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is HomeCarga) {
                    return  Vista_carga();
                  } else if (state is HomeCargado) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "✅ Usuario registrado correctamente",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text("Nombre: ${state.info.nombre}"),
                          Text("Correo: ${state.info.correo}"),
                          Text("Contraseña: ${state.info.contrasena}"), 
                        ],
                      );
                    }
                  return const SizedBox();
                }
              ),
            )
          ],
        ),
      )
    );
  }
}