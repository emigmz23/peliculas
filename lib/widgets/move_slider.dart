import 'package:flutter/material.dart';

import '../models/model.dart';

class MovieSlider extends StatelessWidget {

  final List<Movie> movies;
  final String? title;
  
  const MovieSlider({
    Key? key, 
    required this.movies,
    this.title}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          if (title != null)

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                title!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 10,),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: ( _ , index) =>_MovePoster(
                movies[index],
              ),
            ),
          )

        ],
      ),
    );
  }
}

class _MovePoster extends StatelessWidget {

  final Movie movie;
  const _MovePoster(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 160,
      margin: const EdgeInsets.symmetric(
      horizontal: 10, 
      ), 
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
              placeholder: AssetImage('assets/foto.jpg'),
              image: NetworkImage(movie.fullPosterImg),
              width: 140,
              height: 170,
              fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 10,),

          Text(
            movie.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            )
        ],
      ),
    );
  }
}