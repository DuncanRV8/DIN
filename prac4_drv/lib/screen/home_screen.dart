import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'load_data.dart';
import '../model/peli.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Peli> peliculasEnCartelera = [];
  List<Peli> proximosEstrenos = [];

  @override
  void initState() {
    super.initState();
    cargarPeliculas();
  }

  Future<void> cargarPeliculas() async {
    Response responseNowPlaying = await Dio().get(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=6994eac03fece4d12f6f450765b1b53a&language=en-US&page=1');


    Response responseUpcoming = await Dio().get(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=6994eac03fece4d12f6f450765b1b53a&language=en-US&page=1');

    setState(() {
      peliculasEnCartelera = _mapearPeliculas(responseNowPlaying.data['results']);
      proximosEstrenos = _mapearPeliculas(responseUpcoming.data['results']);
    });
  }

  List<Peli> _mapearPeliculas(List<dynamic> data) {
    List<Peli> peliculas = [];
    for (var pelicula in data) {
      peliculas.add(Peli.fromJson(pelicula));
    }
    return peliculas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: DataLoader(),
    );
  }
}
