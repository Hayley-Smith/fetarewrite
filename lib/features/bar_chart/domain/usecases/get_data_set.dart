import 'package:add_feature_practice/core/errors/failures.dart';
import 'package:add_feature_practice/core/helpers/usecases.dart';
import 'package:add_feature_practice/features/bar_chart/domain/entities/data_set.dart';
import 'package:add_feature_practice/features/bar_chart/domain/repositories/get_data_set_repository.dart';
import 'package:dartz/dartz.dart';

class GetDataSet implements UseCase<DataSet, NoParams> {
  final DataSetRepository repository;

  GetDataSet(this.repository);

  @override
  Future<Either<Failure, DataSet>> call(NoParams params) async {
    return await repository.getDataSet();
  }
}
