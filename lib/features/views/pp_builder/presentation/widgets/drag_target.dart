import 'package:flutter/material.dart';

class DragTarget extends StatefulWidget {
  const DragTarget(
      {Key key,
      Null Function(Widget chart) onAccept,
      Padding Function(BuildContext context, List accepted, List rejected)
          builder})
      : super(key: key);

  @override
  State<DragTarget> createState() => _DragTargetState();
}

class _DragTargetState extends State<DragTarget> {
  var caughtColor = Colors.grey;
  var displayChart;
  @override
  Widget build(BuildContext context) {
    return DragTarget(onAccept: (Widget chart) {
      displayChart = chart;
    }, builder: (
      BuildContext context,
      List<dynamic> accepted,
      List<dynamic> rejected,
    ) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: displayChart == null ? caughtColor : Colors.grey.shade200,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child:
                    displayChart == null ? Text("Drag Here!") : displayChart),
          ),
        ),
      );
    });
  }
}
