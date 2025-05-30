import 'package:flutter/material.dart';
import 'package:responsive_web_app/View/Home%20Screen/home_screen.dart';
import 'package:responsive_web_app/View/Home%20Screen/responsive_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveScreen(),
    );
  }
}
