class Word{
  final String original;
  final String translation;
  final String sentence;
  
  const Word({
    required this.original,
    required this.translation,
    required this.sentence
  });
}

class PracticeWord{
  final Word word;
  int priority;

  PracticeWord({
    required this.word,
    required this.priority
  });
}