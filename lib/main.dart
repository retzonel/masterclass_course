import 'package:flutter/material.dart';
import 'package:masterclass_course/app_routes.dart';
import 'package:masterclass_course/pages/first_page.dart';
import 'package:masterclass_course/pages/home_page.dart';
import 'package:masterclass_course/pages/profile_page.dart';
import 'package:masterclass_course/pages/second_page.dart';
import 'package:masterclass_course/pages/settings_page.dart';

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
        AppRoutes.firstPage: (context) => FirstPage(),
        AppRoutes.secondPage: (context) => SecondPage(names: names,),
        AppRoutes.settingsPage: (context) => SettingsPage(),
        AppRoutes.homePage: (context) => HomePage(),
        AppRoutes.profilePage: (context) => ProfilePage()
      },
    );
  }
}
