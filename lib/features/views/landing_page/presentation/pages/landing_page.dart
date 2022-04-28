import 'package:add_feature_practice/features/views/landing_page/presentation/widgets/landing_page_card.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_deck.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<SlideDeck> dummyDecks = [
    SlideDeck(),
    SlideDeck(),
    SlideDeck(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LandingPageCard(dummyDecks),
      ),
    );
  }
}
