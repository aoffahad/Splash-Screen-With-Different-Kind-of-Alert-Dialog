import 'package:flutter/material.dart';
import 'package:map_in_mac_two/home_page.dart';
import 'package:map_in_mac_two/splash_screen/splash_screen.dart';

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
      home: SplashScreen()
    );
  }
}

