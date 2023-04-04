import 'package:flutter/material.dart';
import 'package:flutter_demo/my_app_demo/state/index_state.dart';
import 'package:flutter_demo/my_app_demo/ui/manu.dart';
import 'package:provider/provider.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IndexState(),
      child: MaterialApp(
          title: 'My App Demo',
          theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)),
          home: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<IndexState>(builder: (context, appState, child) {
      return LayoutBuilder(builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              Manu(expanded: constraints.maxWidth >= 600),
              Expanded(
                  child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: pageFactory(appState.selectedPage),
              ))
            ],
          ),
        );
      });
    });
  }
}
