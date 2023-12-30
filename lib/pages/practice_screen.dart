import 'dart:math';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../word.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({
    super.key,
    required this.words,
  });

  final List<Word> words;

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  @override
  Widget build(BuildContext context) {
    Random rng = Random();
    List<PracticeWord> practiceWords = List.generate(widget.words.length,
        (index) => PracticeWord(word: widget.words[index], priority: 5));
    int current = rng.nextInt(practiceWords.length);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlipCard(
            front: Text(practiceWords[current].word.original),
            back: Text(practiceWords[current].word.translation),
          ),
          Text(practiceWords[current].word.sentence),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 15,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    practiceWords[current].priority--;
                    while (current == rng.nextInt(practiceWords.length)) {
                      current = rng.nextInt(practiceWords.length);
                    }
                  });
                },
                child: const Icon(Icons.close),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    practiceWords[current].priority++;
                    while (current == rng.nextInt(practiceWords.length)) {
                      current = rng.nextInt(practiceWords.length);
                    }
                  });
                },
                child: const Icon(Icons.done),
              ),
            ],
          )
        ],
      ),
    );
  }
}
