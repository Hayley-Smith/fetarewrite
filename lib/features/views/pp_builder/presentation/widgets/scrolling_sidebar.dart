import 'package:add_feature_practice/features/bar_chart/presentation/widgets/bar_chart_widget.dart';
import 'package:add_feature_practice/features/bar_chart/presentation/widgets/horizontal_bar_chart.dart';
import 'package:add_feature_practice/features/pie_chart/presentation/widgets/draggable_pie_with_legend.dart';
import 'package:add_feature_practice/features/pie_chart/presentation/widgets/pie_chart_widget.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/draggable_chart_type_card.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ScrollingSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CollapsingList(),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class CollapsingList extends StatelessWidget {
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 100.0,
        child: Container(
            color: Colors.green, child: Center(child: Text(headerText))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        makeHeader('Chart Types'),
        SliverGrid.count(
          crossAxisCount: 1,
          children: [
            Container(
              color: Colors.white,
              height: 60.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DraggablePieWithLegend(),
              ),
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SimpleBarChart.withSampleData(),
              ),
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PieOutsideLabelChart.withSampleData(),
              ),
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: HorizontalBarChartWithSecondaryAxis.withSampleData(),
              ),
            ),
          ],
        ),
        makeHeader('Feedback'),
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildListDelegate(
            [
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
