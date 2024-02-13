import 'package:dio/dio.dart';

class MovieService {
  final Dio _dio = Dio();

  final String apiKey = '6994eac03fece4d12f6f450765b1b53a';
  final String baseUrl = 'https://api.themoviedb.org/3';
  final String language = 'es-ES';

  Future<List<dynamic>> fetchNowPlayingMovies() async {
    try {
      final response = await _dio.get(
        '$baseUrl/movie/now_playing',
        queryParameters: {
          'api_key': apiKey,
          'language': language,
          'page': 1,
        },
      );
      return response.data['results'];
    } catch (error) {
      throw Exception('Failed to load now playing movies');
    }
  }

  Future<List<dynamic>> fetchUpcomingMovies() async {
    try {
      final response = await _dio.get(
        '$baseUrl/movie/upcoming',
        queryParameters: {
          'api_key': apiKey,
          'language': language,
          'page': 1,
        },
      );
      return response.data['results'];
    } catch (error) {
      throw Exception('Failed to load upcoming movies');
    }
  }
}
