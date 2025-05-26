import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_providers.dart';
import 'package:provider/provider.dart';


import '../widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('peliculas en cines'),
        centerTitle: true, 
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined, color:Colors.white),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            CardSwiper(movies: moviesProvider.onDisplayMovies,),
            
            SizedBox.square(
              dimension: 70,
            ),
            
            MovieSlider(
              movies: moviesProvider.popularMovies,
              title: 'Populares',
            ),

            
          ],
        ),
      )
    );
  }
}