import 'package:bloc/bloc.dart';
part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState(index: 0)) {
    on<NavigateToTab>((event, emit) {
      emit(NavigationState(index:event.index));
    });
  }
}
