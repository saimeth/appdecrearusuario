import 'package:app/feature/home/presentation/data/model/model_home.dart';
import 'package:dio/dio.dart';


class ServiceHome {
  final dio = Dio();

  Future<Info> infoFormulario({
    required String nombre,
    required String correo,
    required String contrasena
  }) async {
  
  
      final response = await dio.post("https://jsonblob.com/api/jsonBlob",
        data: { "nombre": nombre,
        "correo": correo,
        "contrasena": contrasena,
        },
      );
    
      if (response.statusCode == 201) {
        //como JsonBlob no devuelve información entonces guardamos la location
        final location = response.headers.value("location");
        if (location == null) {
          throw Exception("No se recibió la ubicación del blob");
        }
        //Para Traer la inforación que envió el usuario
        final getResponse = await dio.get(location);
        return Info.fromJson(getResponse.data);
      } else {
        throw Exception("Error: ${response.statusCode}");
      }
    }
    
  

//PETICIÓN GET
  Future<Info> obtenerInfo() async {
    final response = await dio.get("http://jsonblob.com/1421593738337247232");

    if (response.statusCode == 200) {
      return Info.fromJson(response.data);
    } else {
      throw Exception("Error: ${response.statusCode}");
    }
  }
}