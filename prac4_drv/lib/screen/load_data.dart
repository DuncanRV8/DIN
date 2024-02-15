import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:dio/dio.dart';
import 'package:prac4_drv/screen/movie_screen.dart';
import '../model/peli.dart';
import '../widget/custom_widget.dart';

class DataLoader extends StatefulWidget {
  const DataLoader({Key? key}) : super(key: key);

  @override
  _DataLoaderState createState() => _DataLoaderState();
}

class _DataLoaderState extends State<DataLoader> {
  late List<Peli> peliculasEnCartelera;
  late List<Peli> proximosEstrenos;
  bool estaCargando = true;

  @override
  void initState() {
    super.initState();
    cargarPeliculas();
  }

  Future<void> cargarPeliculas() async {
    Response responseNowPlaying = await Dio().get(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=6994eac03fece4d12f6f450765b1b53a&language=es-ES&page=1');

    Response responseUpcoming = await Dio().get(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=6994eac03fece4d12f6f450765b1b53a&language=es-ES&page=1');

    setState(() {
      peliculasEnCartelera = _mapearPeliculas(responseNowPlaying.data['results']);
      proximosEstrenos = _mapearPeliculas(responseUpcoming.data['results']);
      estaCargando = false;
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
    return estaCargando
        ? Center(
            child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
            ),
          )
        : ListView(
            children: [
              CustomWidget(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Ya disponibles',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                  height: 300,
                  child: Swiper(
                    itemCount: peliculasEnCartelera.length,
                    viewportFraction: 0.8,
                    scale: 0.8,
                    autoplay: true,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetallePeliculaScreen(
                                      pelicula: peliculasEnCartelera[index])));
                        },
                        child: SlideInUp(
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(9, 0),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  'https://image.tmdb.org/t/p/w780${peliculasEnCartelera[index].backdropPath}',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    pagination: SwiperPagination(),
                  ),
                ),
              const SizedBox(height: 60),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Próximamente',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: proximosEstrenos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SlideInUp(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://image.tmdb.org/t/p/w300${proximosEstrenos[index].posterPath}',
                              fit: BoxFit.cover,
                              width: 120,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
  }
}
