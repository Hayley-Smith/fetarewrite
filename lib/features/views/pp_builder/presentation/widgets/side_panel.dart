import 'package:add_feature_practice/features/bar_chart/presentation/widgets/bar_chart_with_legend.dart';
import 'package:add_feature_practice/features/bar_chart/presentation/widgets/horizontal_bar_chart.dart';
import 'package:add_feature_practice/features/pie_chart/presentation/widgets/draggable_pie_with_legend.dart';
import 'package:add_feature_practice/features/pie_chart/presentation/widgets/pie_chart_widget.dart';
import 'package:flutter/material.dart';

class SidePanel extends StatefulWidget {
  const SidePanel({Key key}) : super(key: key);

  @override
  State<SidePanel> createState() => _SidePanelState();
}

class _SidePanelState extends State<SidePanel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.green,
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("Select a chart and drag it to a target"),
              ),
              height: 55,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 150,
                  child: Center(
                    child: DraggablePieWithLegend(),
                  ),
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 150,
                child: Center(
                  child: Draggable(
                      feedback: SimpleSeriesLegend.withSampleData(),
                      child: SimpleSeriesLegend.withSampleData()),
                ),
              ),
            ),
            // ColorFiltered(
            //   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.saturation),
            //   child: Card(
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: SizedBox(
            //         height: 200,
            //         child: Center(
            //             child: BucketingAxisScatterPlotChart.withSampleData()),
            //       ),
            //     ),
            //   ),
            // ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 200,
                  child: Center(
                    child: HorizontalBarChartWithSecondaryAxis.withSampleData(),
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 150,
                  child: Center(
                    child: PieOutsideLabelChart.withSampleData(),
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 150,
                  child: Center(
                    child: SimpleSeriesLegend.withSampleData(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
