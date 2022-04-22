import 'dart:convert';

import 'package:add_feature_practice/features/views/landing_page/presentation/pages/landing_page.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/pages/pp_large_screen.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/four_by_four.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/title_content_chart.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_card.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_deck.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<SlideDeck> dummyDecks = [
    SlideDeck(
      listOfSlides: [],
    ),
    SlideDeck(listOfSlides: [
      SlideCard(
        layout: FourByFourLayout(),
      ),
      SlideCard(
        layout: TitleContentChartLayout(),
      ),
      SlideCard(
        layout: TitleContentChartLayout(),
      ),
    ]),
    SlideDeck(listOfSlides: [
      SlideCard(
        layout: FourByFourLayout(),
      ),
      SlideCard(
        layout: FourByFourLayout(),
      ),
    ])
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/powerpoint': (context) => LargeScreen(
              deck: dummyDecks[0],
            ),
        '/sampleDeck1': (context) => LargeScreen(
              deck: dummyDecks[1],
            ),
        '/sampleDeck2': (context) => LargeScreen(
              deck: dummyDecks[2],
            ),
      },
      title: 'ETA - PowerPoint Builder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ETA - PowerPoint Builder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LandingPage();
  }
}
