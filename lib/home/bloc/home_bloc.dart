import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial(pageIndex: 0)) {

    on<BottomMenuSelected>((event, emit) {
      emit(HomeInitial(pageIndex: event.pageIndex));
    });

  }
}
