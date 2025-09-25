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
        return Info.fromJson(response.data);
      } else {
        throw Exception("Error: ${response.statusCode}");
      }
    }
  }

