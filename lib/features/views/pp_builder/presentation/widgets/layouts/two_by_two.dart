import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/layout.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TwoByTwoLayout extends Layout {
  String type = "TwoByTwo";
  TwoByTwoLayout({Key key});

  @override
  State<TwoByTwoLayout> createState() => _FourByFourLayoutState();
}

class _FourByFourLayoutState extends State<TwoByTwoLayout> {
  var caughtColor = Colors.grey;
  var displayChart;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Slide Title",
                softWrap: true,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: constraints.maxHeight * .4,
                  width: constraints.maxWidth * .4,
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
                SizedBox(
                  height: constraints.maxHeight * .4,
                  width: constraints.maxWidth * .4,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: constraints.maxHeight * .4,
                  width: constraints.maxWidth * .4,
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
                SizedBox(
                  height: constraints.maxHeight * .4,
                  width: constraints.maxWidth * .4,
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
