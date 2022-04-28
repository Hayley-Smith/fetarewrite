import 'package:add_feature_practice/features/bar_chart/presentation/widgets/draggable_horizontal_bar_chart.dart';
import 'package:add_feature_practice/features/bar_chart/presentation/widgets/draggable_simple_bar_chart.dart';
import 'package:add_feature_practice/features/pie_chart/presentation/widgets/draggable_pie_outside_label.dart';
import 'package:add_feature_practice/features/pie_chart/presentation/widgets/draggable_pie_with_legend.dart';
import 'package:flutter/material.dart';

class SelectChartTypePanel extends StatefulWidget {
  const SelectChartTypePanel({Key key}) : super(key: key);

  @override
  State<SelectChartTypePanel> createState() => _SelectChartTypePanelState();
}

class _SelectChartTypePanelState extends State<SelectChartTypePanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GridView.count(
        crossAxisCount: 4,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DraggableBarChart(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DraggableHorizontalBar(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DraggablePieOutsideLabel(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DraggablePieWithLegend(),
          )
        ],
      ),
    );
  }
}
