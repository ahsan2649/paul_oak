import 'package:flutter/material.dart';
import 'package:paul_oak/word.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    this.words,
    super.key,
  });

  final List<Word>? words;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        direction: Axis.vertical,
        spacing: 25,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text("Great job!"),
          ElevatedButton(onPressed: () {}, child: Text("Hard words : 5")),
          Wrap(
            spacing: 15,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.refresh),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
