import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:paul_oak/pages/home_screen.dart';
import 'package:paul_oak/pages/practice_screen.dart';
import 'package:paul_oak/pages/results_screen.dart';
import 'package:paul_oak/word.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  Future<List<Word>> loadAsset() async {
    final String response = await rootBundle.loadString('assets/SampleWordList.json');
    return wordFromJson(response);
  }

  

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(future: loadAsset(), builder: (BuildContext context, AsyncSnapshot<List<Word>> snapshot){
          Widget child;
          if (snapshot.hasData) {
            child = PracticeScreen(words:snapshot.requireData);
          }
          else{
            child = const Text("Loading words...");
          }
          return child;
        }),
      ),
    );
  }
}
