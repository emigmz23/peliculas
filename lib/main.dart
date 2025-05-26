import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_providers.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';


void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => MoviesProvider(), lazy: false,
        ), 
      ]
      , child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'peliculas',
      initialRoute: 'home',
      routes: {
        'home' : ( _ ) => const HomeScreen(),
        'details' : ( _ ) => const DetailsScreen(),
      },
      theme: ThemeData.light()..copyWith(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white),
          color: Colors.indigo,
          elevation: 0,
        ),
      ),
    );
  }
}
