import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import '../models/model.dart';


class MoviesProvider extends ChangeNotifier {

  final String _apiKey = 'bb49aaa93ea0a04f3e0a1ca9df8110ff';
  final String  _baseUrl = 'api.themoviedb.org';
  final String _lenguage = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  int _popularPage = 0;
  
  MoviesProvider() {

     getOnDisplayMovies();
     getPopularMovies();
    
  }

  Future<String> _getJsonData(String segmento, [int page = 1]) async {
    var url =
      Uri.https(_baseUrl, segmento, {
        'api_key' : _apiKey,
        'language': _lenguage,
        'page' : '$page',
      });

    final response = await http.get(url);
    return response.body;
  }
  
  getOnDisplayMovies() async {
      final jsonData = await _getJsonData('3/movie/now_playing');
      final nowPlayingRresopnse = NowPlayingRresopnse.fromJson(jsonData);

      onDisplayMovies = nowPlayingRresopnse.results;

      notifyListeners();
  }

  getPopularMovies() async{

      _popularPage++;

      final jsonData = await _getJsonData('3/movie/popular', _popularPage);
      final popularResponse = PopularResponse.fromJson(jsonData);

      popularMovies = [...popularMovies, ...popularResponse.results];

      notifyListeners();
  }
}