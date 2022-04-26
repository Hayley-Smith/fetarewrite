import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/main_panel.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/scrolling_sidebar.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_deck.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatefulWidget {
  final SlideDeck deck;
  LargeScreen({Key key, this.deck}) : super(key: key);

  @override
  _LargeScreenState createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            child: ScrollingSidebar(),
          ),
          Flexible(
            child: MainPanel(
              deck: widget.deck,
            ),
            flex: 6,
          )
        ],
      ),
    );
  }
}
