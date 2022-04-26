import 'package:add_feature_practice/features/views/chart_builder/presentation/views/chart_builder_view.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/scrolling_sidebar.dart';
import 'package:flutter/material.dart';

class ChartBuilderLargeScreen extends StatefulWidget {
  ChartBuilderLargeScreen({
    Key key,
  }) : super(key: key);

  @override
  _ChartBuilderLargeScreenState createState() =>
      _ChartBuilderLargeScreenState();
}

class _ChartBuilderLargeScreenState extends State<ChartBuilderLargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            child: ChartBuilderView(),
            flex: 6,
          )
        ],
      ),
    );
  }
}
