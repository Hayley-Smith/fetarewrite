import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/main_panel.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/scrolling_sidebar.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_deck.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  SlideDeck deck;
  LargeScreen({Key key, this.deck}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ScrollingSidebar(),
          ),
          Expanded(
            child: MainPanel(
              deck: deck,
            ),
            flex: 5,
          )
        ],
      ),
    );
  }
}
