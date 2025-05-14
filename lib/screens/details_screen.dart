import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
   
  const DetailsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined, color:Colors.white,),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Text('Details Screen'),
        ),
      ),
    );
  }
}