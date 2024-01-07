import 'dart:convert';

List<Word> wordFromJson(String str) => List<Word>.from(json.decode(str).map((x) => Word.fromJson(x)));

String wordToJson(List<Word> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Word {
    String sentence;
    String translation;
    String original;

    Word({
        required this.sentence,
        required this.translation,
        required this.original,
    });

    factory Word.fromJson(Map<String, dynamic> json) => Word(
        sentence: json["sentence"],
        translation: json["translation"],
        original: json["original"],
    );

    Map<String, dynamic> toJson() => {
        "sentence": sentence,
        "translation": translation,
        "original": original,
    };
}

class PracticeWord {
  final Word word;
  int priority;

  PracticeWord({required this.word, required this.priority});
}
