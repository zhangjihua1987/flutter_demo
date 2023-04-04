import 'package:flutter/material.dart';
import 'package:flutter_demo/my_app_demo/models/word_entity.dart';

class BigCard extends StatelessWidget {
  BigCard({super.key, required this.wordEntity});

  WordEntity wordEntity;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!
        .copyWith(color: theme.colorScheme.onPrimary);

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: wordEntity.toText(style: style),
      ),
    );
  }
}
