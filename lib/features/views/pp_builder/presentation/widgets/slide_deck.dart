import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlideDeck extends StatefulWidget {
  List<SlideCard> listOfSlides;
  SlideDeck({Key key, this.listOfSlides}) : super(key: key);

  addSlide(SlideCard slideCard) {
    List<SlideCard> newList = listOfSlides;
    newList.add(slideCard);
    listOfSlides = newList;
  }

  @override
  State<SlideDeck> createState() => _SlideDeckState();
}

class _SlideDeckState extends State<SlideDeck> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      height: MediaQuery.of(context).size.height * .6,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.listOfSlides.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SlideCard(),
            );
          }),
    );
  }
}
