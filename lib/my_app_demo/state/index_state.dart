import 'package:flutter/material.dart';
import 'package:flutter_demo/my_app_demo/models/word_entity.dart';

class IndexState extends ChangeNotifier {
  List<WordEntity> words = [WordEntity.getRandom()];
  int selectedPage = 0;

  void getNext() {
    words.add(WordEntity.getRandom());
    print(words.map((e) => print(e.pair)));
    notifyListeners();
  }

  void toggleFavorite() {
    current.isFavorite = !current.isFavorite;
    notifyListeners();
  }

  void selectPage(int value) {
    selectedPage = value;
    notifyListeners();
  }

  WordEntity get current => words.last;
}
