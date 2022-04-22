import 'package:add_feature_practice/core/errors/failures.dart';
import 'package:add_feature_practice/features/bar_chart/domain/entities/data_set.dart';

import 'package:dartz/dartz.dart';

abstract class DataSetRepository {
  Future<Either<Failure, DataSet>> getDataSet();
}
