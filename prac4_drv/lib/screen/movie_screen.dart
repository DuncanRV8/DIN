import 'package:flutter/material.dart';
import '../model/peli.dart';

class DetallePeliculaScreen extends StatefulWidget {
  final Peli pelicula;


  DetallePeliculaScreen({required this.pelicula});

  @override
  State<DetallePeliculaScreen> createState() => _DetallePeliculaScreenState();
}

class _DetallePeliculaScreenState extends State<DetallePeliculaScreen> {
  bool _mostrarTituloOriginal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _mostrarTituloOriginal ? Text(widget.pelicula.originalTitle) : Text(widget.pelicula.title),
        actions: [
          Switch(
              value: _mostrarTituloOriginal,
              onChanged: (value) {
                setState(() {
                  _mostrarTituloOriginal = value;
                });
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500${widget.pelicula.posterPath}',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Fecha de Estreno: ${_formatFecha(widget.pelicula.releaseDate)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(75.0, 0.0, 0.0, 0.0),
              child: Valoration(),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                widget.pelicula.overview,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row Valoration() {
    return Row(
      children: [
         const Text('Valoración:   ',
                style: TextStyle(fontSize: 18),
              ),
        SizedBox(
          height: 7,
          width: 60,
          child: LinearProgressIndicator(
            value: widget.pelicula.voteAverage / 10,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            backgroundColor: Colors.grey[300],
          ),
        ),
      ],
    );
  }

  String _formatFecha(String fecha) {
    DateTime parsedDate = DateTime.parse(fecha);
    return '${parsedDate.day.toString().padLeft(2, '0')}-${parsedDate.month.toString().padLeft(2, '0')}-${parsedDate.year}';
  }
}
