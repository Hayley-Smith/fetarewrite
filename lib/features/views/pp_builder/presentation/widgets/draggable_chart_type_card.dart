import 'package:add_feature_practice/features/bar_chart/presentation/widgets/bar_chart_widget.dart';
import 'package:flutter/material.dart';

class DraggableChartTypeCard extends StatefulWidget {
  final Widget chart;
  const DraggableChartTypeCard({Key key, @required this.chart})
      : super(key: key);

  @override
  State<DraggableChartTypeCard> createState() => _DraggableChartTypeCardState();
}

class _DraggableChartTypeCardState extends State<DraggableChartTypeCard> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: widget.chart,
      child: widget.chart,
      feedback: Container(
        child: SizedBox(
          width: 150,
          height: 150,
          child: Center(
            child: widget.chart,
          ),
        ),
      ),
    );
  }
}
