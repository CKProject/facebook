import 'package:facebook/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData(
        primaryColor: const Color(0xFF3872DD),
        colorScheme: const ColorScheme.light(
          secondary: Color(0xFF66676A),
        ),
      ),
      home: const MainPage(),
    );
  }
}
