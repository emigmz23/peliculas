import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('peliculas en cines'),
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
        
            // Tarjeta principal
            CardSwiper(),
            
            MoveSlider(),

            
          ],
        ),
      )
    );
  }
}