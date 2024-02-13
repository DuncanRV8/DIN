import 'package:flutter/material.dart';
import 'package:prac4_drv/list/started_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> nowPlayingMovies = [];
  List<dynamic> upcomingMovies = [];

  final MovieService _movieService = MovieService();

  @override
  void initState() {
    super.initState();
    _loadMovies();
  }

  void _loadMovies() async {
    try {
      final nowPlaying = await _movieService.fetchNowPlayingMovies();
      final upcoming = await _movieService.fetchUpcomingMovies();
      setState(() {
        nowPlayingMovies = nowPlaying;
        upcomingMovies = upcoming;
      });
    } catch (e) {
      print('Error loading movies: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Now Playing Movies: ${nowPlayingMovies.length}',
            ),
            Text(
              'Upcoming Movies: ${upcomingMovies.length}',
            ),
          ],
        ),
      ),
    );
  }
}
