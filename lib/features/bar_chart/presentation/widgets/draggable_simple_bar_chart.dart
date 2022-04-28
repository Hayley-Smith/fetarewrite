import 'package:add_feature_practice/features/bar_chart/presentation/widgets/bar_chart_widget.dart';
import 'package:flutter/material.dart';

class DraggableBarChart extends StatefulWidget {
  const DraggableBarChart({Key key}) : super(key: key);

  @override
  State<DraggableBarChart> createState() => _DraggableBarChartState();
}

class _DraggableBarChartState extends State<DraggableBarChart> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: SimpleBarChart.withSampleData(),
      child: SimpleBarChart.withSampleData(),
      feedback: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Simple Bar Chart',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
