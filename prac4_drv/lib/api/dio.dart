import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/peli.dart';

final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://dart.dev');
  print(response);
  List<Peli> parseMovies(String responseBody) {
    final parsed = jsonDecode(responseBody)['results'].cast<Map<String, dynamic>>();
    return parsed.map<Peli>((json) => Peli.fromJson(json)).toList();
  }

}