import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Views/Homapage/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.pinkAccent
          ),
          titleMedium: TextStyle(
            color: Colors.deepOrange
          ),
          titleSmall: TextStyle(
            color: Colors.black
          )

        )
      ),
      home: HomePage(),
    );
  }
}



