import 'package:flutter/material.dart';

import 'screens/screens.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
