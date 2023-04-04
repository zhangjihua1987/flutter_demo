import 'package:flutter/material.dart';
import 'package:flutter_demo/my_app_demo/state/index_state.dart';
import 'package:flutter_demo/my_app_demo/ui/favorites_page.dart';
import 'package:flutter_demo/my_app_demo/ui/generator_page.dart';
import 'package:provider/provider.dart';

class Manu extends StatelessWidget {
  Manu({required this.expanded});
  bool expanded;

  @override
  Widget build(BuildContext context) {
    return Consumer<IndexState>(builder: (context, appState, child) {
      return SafeArea(
        child: NavigationRail(
          extended: expanded,
          destinations: [
            NavigationRailDestination(
                icon: Icon(Icons.home), label: Text("Home")),
            NavigationRailDestination(
                icon: Icon(Icons.favorite), label: Text("Favorite"))
          ],
          selectedIndex: appState.selectedPage,
          onDestinationSelected: (value) {
            appState.selectPage(value);
          },
        ),
      );
    });
  }
}

Widget pageFactory(int selectedValue) {
  switch (selectedValue) {
    case 0:
      return GeneratorPage();
    case 1:
      return FavoritesPage();
    default:
      throw UnimplementedError('no widget for $selectedValue');
  }
}
