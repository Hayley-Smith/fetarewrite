import 'package:add_feature_practice/features/bar_chart/domain/entities/data_item.dart';

class DataSeries {
  final String id;
  final List<DataItem> dataItems;

  DataSeries({this.id, this.dataItems});
}
