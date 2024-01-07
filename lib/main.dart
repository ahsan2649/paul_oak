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
    List<Word> wordlist = [
      Word(original: "original1", translation: "translation1", sentence: "sentence1"),
      Word(original: "original2", translation: "translation2", sentence: "sentence2"),
      Word(original: "original3", translation: "translation3", sentence: "sentence3"),
      Word(original: "original4", translation: "translation4", sentence: "sentence4"),
      Word(original: "original5", translation: "translation5", sentence: "sentence5"),
      Word(original: "original6", translation: "translation6", sentence: "sentence6"),
      Word(original: "original7", translation: "translation7", sentence: "sentence7"),
      Word(original: "original8", translation: "translation8", sentence: "sentence8"),
      Word(original: "original9", translation: "translation9", sentence: "sentence9"),
      Word(original: "original10", translation: "translation10", sentence: "sentence10"),
      Word(original: "original11", translation: "translation11", sentence: "sentence11"),
    ];
    return MaterialApp(
      home: Scaffold(body: PracticeScreen(words: wordlist,)),
    );
  }
}

