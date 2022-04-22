import 'package:flutter/material.dart';

import 'layout.dart';

class TitleContentChartLayout extends Layout {
  TitleContentChartLayout({Key key});

  @override
  State<TitleContentChartLayout> createState() =>
      _TitleContentChartLayoutState();
}

class _TitleContentChartLayoutState extends State<TitleContentChartLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: constraints.maxWidth * .34,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Slide Title",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: constraints.maxWidth * .34,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi scelerisque eu ultrices vitae auctor. Sed cras ornare arcu dui vivamus arcu felis bibendum ut. Felis bibendum ut tristique et egestas. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis. Tristique nulla aliquet enim tortor at auctor urna.",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: constraints.maxHeight * .8,
                width: constraints.maxWidth * .6,
                child: Card(
                  color: Colors.grey[100],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
