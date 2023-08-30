import 'package:alterra_batch_4/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Version Control Git',
      theme: ThemeData(
        primaryColor: const Color(0xff517da2),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff517da2)
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: routes,
    );
  }
}
