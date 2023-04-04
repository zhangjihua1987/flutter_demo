import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class WordEntity {
  WordPair pair;
  bool isFavorite;

  WordEntity({required this.pair, this.isFavorite = false});

  static WordEntity getRandom() {
    return WordEntity(pair: WordPair.random());
  }

  Text toText({style}) {
    return Text(
      pair.asLowerCase,
      semanticsLabel: '${pair.first} ${pair.second}',
      style: style,
    );
  }

  Icon getIcon() {
    return isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border);
  }

  ListTile toListTitle() {
    return ListTile(
      leading: getIcon(),
      title: toText(),
    );
  }
}
