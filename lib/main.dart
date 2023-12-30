import 'package:flutter/material.dart';
import 'package:paul_oak/pages/home_screen.dart';
import 'package:paul_oak/pages/practice_screen.dart';
import 'package:paul_oak/pages/results_screen.dart';
import 'package:paul_oak/word.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: ResultsScreen()),
    );
  }
}

