import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(const CampusEmFocoApp());

class CampusEmFocoApp extends StatelessWidget {
  const CampusEmFocoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus em Foco',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF2F3EF),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFC8F000)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF2F3EF),
          foregroundColor: Color(0xFF171917),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF171917),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
