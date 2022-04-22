import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_deck.dart';
import 'package:flutter/material.dart';

class LandingPageCard extends StatefulWidget {
  const LandingPageCard(List<SlideDeck> dummyDecks, {Key key})
      : super(key: key);

  @override
  State<LandingPageCard> createState() => _LandingPageCardState();
}

class _LandingPageCardState extends State<LandingPageCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 200,
        ),
        Card(
          child: SizedBox(
            width: 200,
            height: 200,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/powerpoint');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Create a New Deck",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add_outlined,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          child: SizedBox(
            width: 200,
            height: 200,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/sampleDeck1');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sample Deck 1",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.folder_open,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          child: SizedBox(
            width: 200,
            height: 200,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/sampleDeck2');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sample Deck 2",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.folder_open_outlined,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
