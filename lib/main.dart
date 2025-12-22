import 'package:flutter/material.dart';
import 'package:masterclass_course/pages/first_page.dart';
import 'package:masterclass_course/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> names = ["haha", "see_shege", "God abeg"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: FirstPage(),
      routes: {
        "/secondpage": (context) => SecondPage()
      },
    );
  }
}
