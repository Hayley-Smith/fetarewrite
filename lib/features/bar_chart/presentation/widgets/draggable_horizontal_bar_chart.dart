import 'package:add_feature_practice/features/bar_chart/presentation/widgets/horizontal_bar_chart.dart';
import 'package:flutter/material.dart';

class DraggableHorizontalBar extends StatefulWidget {
  const DraggableHorizontalBar({Key key}) : super(key: key);

  @override
  State<DraggableHorizontalBar> createState() => _DraggableHorizontalBarState();
}

class _DraggableHorizontalBarState extends State<DraggableHorizontalBar> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: HorizontalBarChartWithSecondaryAxis.withSampleData(),
      child: HorizontalBarChartWithSecondaryAxis.withSampleData(),
      feedback: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Horizontal Bar Chart with Secondary Axis',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
