import 'package:flutter/material.dart';

import 'layout.dart';

// ignore: must_be_immutable
class TitleContentChartLayout extends Layout {
  String type = "TitleContentChart";
  TitleContentChartLayout({Key key});

  @override
  State<TitleContentChartLayout> createState() =>
      _TitleContentChartLayoutState();
}

class _TitleContentChartLayoutState extends State<TitleContentChartLayout> {
  var caughtColor = Colors.grey;
  var displayChart;

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
                height: constraints.maxHeight * .3,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Slide Title",
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: constraints.maxWidth * .34,
                height: constraints.maxHeight * .5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi scelerisque eu ultrices vitae auctor. Sed cras ornare arcu dui vivamus arcu felis bibendum ut. Felis bibendum ut tristique et egestas. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis. Tristique nulla aliquet enim tortor at auctor urna.",
                    softWrap: true,
                    //overflow: TextOverflow.ellipsis,
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
                child: DragTarget(
                  onAccept: (Widget chart) {
                    displayChart = chart;
                  },
                  builder: (
                    BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,
                  ) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: displayChart == null
                              ? caughtColor
                              : Colors.grey.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: displayChart == null
                                  ? Text("Drag Here!")
                                  : displayChart),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
