import 'package:add_feature_practice/features/bar_chart/domain/entities/data_series.dart';
import 'package:equatable/equatable.dart';

class DataSet extends Equatable {
  final String xaxis;
  final String yaxis;
  final List<DataSeries> dataSeries;

  DataSet({this.xaxis, this.yaxis, this.dataSeries});

  @override
  List<Object> get props => [xaxis, yaxis, dataSeries];
}
