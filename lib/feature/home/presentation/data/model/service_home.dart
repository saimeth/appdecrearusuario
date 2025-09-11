import 'dart:convert';
import 'package:app/feature/home/presentation/data/model/model_home.dart';
import 'package:http/http.dart' as http;

class ServiceHome {
  Future<Info> infoFormulario() async {
    final url = Uri.parse("http://jsonblob.com/1415707226441703424");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final datos = jsonDecode(response.body);
      return Info.fromJson(datos);
    } else {
      throw Exception("Error: ${response.statusCode}");
    }
  }
}
