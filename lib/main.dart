import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const GymRankApp());
}

class GymRankApp extends StatelessWidget {
  const GymRankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gym Rank App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}