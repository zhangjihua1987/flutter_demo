import 'package:flutter/material.dart';
import 'package:flutter_demo/my_app_demo/state/index_state.dart';
import 'package:flutter_demo/my_app_demo/ui/big_card.dart';
import 'package:provider/provider.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<IndexState>(builder: (context, appState, child) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigCard(wordEntity: appState.current),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () => appState.toggleFavorite(),
                  label: Text('Like'),
                  icon: appState.current.getIcon(),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => appState.getNext(), child: Text('Next')),
              ],
            )
          ],
        ),
      );
    });
  }
}
