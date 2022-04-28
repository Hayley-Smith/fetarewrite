import 'package:add_feature_practice/features/pie_chart/presentation/widgets/pie_chart_widget.dart';
import 'package:add_feature_practice/features/pie_chart/presentation/widgets/pie_with_legend.dart';
import 'package:flutter/material.dart';

class DraggablePieOutsideLabel extends StatefulWidget {
  const DraggablePieOutsideLabel({Key key}) : super(key: key);

  @override
  State<DraggablePieOutsideLabel> createState() =>
      _DraggablePieOutsideLabelState();
}

class _DraggablePieOutsideLabelState extends State<DraggablePieOutsideLabel> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: PieOutsideLabelChart.withSampleData(),
      child: PieOutsideLabelChart.withSampleData(),
      feedback: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Pie Chart with Outside Labels',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
