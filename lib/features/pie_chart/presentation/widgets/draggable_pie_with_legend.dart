import 'package:add_feature_practice/features/pie_chart/presentation/widgets/pie_with_legend.dart';
import 'package:flutter/material.dart';

class DraggablePieWithLegend extends StatefulWidget {
  const DraggablePieWithLegend({Key key}) : super(key: key);

  @override
  State<DraggablePieWithLegend> createState() => _DraggablePieWithLegendState();
}

class _DraggablePieWithLegendState extends State<DraggablePieWithLegend> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: DatumLegendWithMeasures.withSampleData(),
      child: DatumLegendWithMeasures.withSampleData(),
      feedback: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Pie Chart with Legend',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
