import 'package:equatable/equatable.dart';

class ExecutionStatusData extends Equatable {
  final int passes;
  final int failures;
  final int notExecuted;

  ExecutionStatusData({this.passes, this.failures, this.notExecuted});

  @override
  List<Object> get props => [passes, failures, notExecuted];
}
