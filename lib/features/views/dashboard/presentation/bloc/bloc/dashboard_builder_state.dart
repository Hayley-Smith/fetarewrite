part of 'dashboard_builder_bloc.dart';

abstract class DashboardBuilderState extends Equatable {
  const DashboardBuilderState();
  
  @override
  List<Object> get props => [];
}

class DashboardBuilderInitial extends DashboardBuilderState {}
