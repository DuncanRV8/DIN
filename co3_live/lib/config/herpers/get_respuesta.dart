import 'package:co3_live/domain/entities/mensaje.dart';
import 'package:dio/dio.dart';

class GetRespuestas {
  final _dio = Dio();

  Future<Mensaje> getHttp() async {
    final response = await _dio.get('https://yesno.wif/api');
    return Mensaje(
        texto: response.data['answer'],
        autor: Autor.otro,
        imgUrl: response.data['image']
    );
    //throw UnimplementedError();
  }
}