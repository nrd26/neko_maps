import 'package:flutter/material.dart';
import 'package:neko_maps/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neko Maps',
      debugShowCheckedModeBanner: false,
      home: Splash()
    );
  }
}
