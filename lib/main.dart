import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_learning_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: appBarMethod(),
      ),
      home: const HomePage(),
    );
  }

  AppBarTheme appBarMethod() {
    return const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }
}
