import 'package:flutter/material.dart';

class MoveSlider extends StatelessWidget {
   
  const MoveSlider({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Populares',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 5,),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: ( _ , index) =>_MoveSliderState(),
            ),
          )

        ],
      ),
    );
  }
}

class _MoveSliderState extends StatelessWidget {
  const _MoveSliderState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
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
              image: NetworkImage('https://placehold.jp/300x400.png'),
              width: 130,
              height: 160,
              fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 5,),

          Text(
            'Star Wars: El retorno del Jedi',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            )
        ],
      ),
    );
  }
}