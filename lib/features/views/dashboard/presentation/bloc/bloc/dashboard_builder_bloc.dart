import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dashboard_builder_event.dart';
part 'dashboard_builder_state.dart';

class DashboardBuilderBloc
    extends Bloc<DashboardBuilderEvent, DashboardBuilderState> {
  DashboardBuilderBloc() : super(DashboardBuilderInitial()) {
    on<DashboardBuilderEvent>((event, emit) {
      // ignore: todo
      // TODO: implement event handler
    });
  }
}
