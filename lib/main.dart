import 'package:add_feature_practice/features/views/chart_builder/chart_builder_large_screen.dart';
import 'package:add_feature_practice/features/views/landing_page/presentation/pages/landing_page.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/pages/pp_large_screen.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/two_by_two.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/title_content_chart.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_card.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_deck.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  List<SlideDeck> dummyDecks = [
    SlideDeck(
      listOfSlides: [],
    ),
    SlideDeck(listOfSlides: [
      SlideCard(
        layout: TwoByTwoLayout(),
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
        layout: TwoByTwoLayout(),
      ),
      SlideCard(
        layout: TwoByTwoLayout(),
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
          '/chartBuilder': (context) => ChartBuilderLargeScreen(),
          '/sampleDeck2': (context) => LargeScreen(
                deck: dummyDecks[2],
              ),
        },
        title: 'ETA - PowerPoint Builder',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage(title: 'ETA '),
        scrollBehavior: MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.mouse},
        ));
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
