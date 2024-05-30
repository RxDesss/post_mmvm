import 'package:flutter/material.dart';
import 'package:post_mmvm/View/screens/homescreen.dart';
import 'package:post_mmvm/View/screens/listscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:'/homescreen' ,
      routes: {
          '/homescreen':(context)=>const HomeScreen(),
          '/listscreen':(context)=>const ListScreen()
      },
    );
  }
}