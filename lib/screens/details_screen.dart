import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'No-movie';

    movie.isNotEmpty;
    
    return Scaffold(
      
      
      body: CustomScrollView(
        slivers: [

          _CustomAppBar(),

          SliverList(
            delegate: SliverChildListDelegate(
              [
                _Poster(),
                _Overview(),
                _Overview(),
                _Overview(),
                _Overview(),

                SizedBox(height: 50),
                
                CastingCards()
               
              ]
            )
          ),
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.only(bottom: 0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10),
          color: Colors.black12,
          child: Text(
            'Movie Title',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          )
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://placehold.jp/500x300.png'),
          fit: BoxFit.cover,
      )
    ),
    );
  }
}

class _Poster extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [

        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://placehold.jp/200x300.png'),
            height: 150,
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(width: 20),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Movie title',
              style: textTheme.headlineMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text('Movie original title',
              style: textTheme.labelLarge,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),

            Row(
              children: [
                Icon(
                  Icons.star_outline,
                  size: 15,
                  color: Colors.grey,
                ),
                Text(
                  'Movie.voteAverage',
                  style: textTheme.labelSmall
                  )
              ],
            )
          ],
        )

      ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text('Anim tempor sint esse ullamco officia exercitation ex. In sunt do quis qui exercitation. Ullamco veniam laboris ad esse non ullamco eiusmod dolore ea dolor dolore. Dolore id cillum eiusmod magna reprehenderit. Mollit dolor sint laborum id veniam.'
      ,textAlign: TextAlign.justify
      ,style: Theme.of(context).textTheme.bodyMedium,),
    );
  }
}