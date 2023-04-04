import 'package:flutter/material.dart';
import 'package:flutter_demo/my_app_demo/models/word_entity.dart';
import 'package:flutter_demo/my_app_demo/state/index_state.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<IndexState>(builder: (context, appState, child) {
      List<WordEntity> favorites =
          appState.words.where((element) => element.isFavorite).toList();
      if (favorites.isEmpty) {
        return Center(
          child: Text('No favorites yet.'),
        );
      }

      return ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: Text('You have '
                  '${favorites.length} favorites:')),
          for (var word in favorites) word.toListTitle(),
        ],
      );
    });
  }
}
