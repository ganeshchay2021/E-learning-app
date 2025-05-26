import 'package:e_learning_app/bloc/font/font_event.dart';
import 'package:e_learning_app/bloc/font/font_state.dart';
import 'package:e_learning_app/services/font_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

class FontBloc extends Bloc<FontEvent, FontState> {
  final GetStorage _storage = GetStorage();

  FontBloc()
      : super(FontState(
            fontScale: FontServices.currentFontScale,
            fontFamily: FontServices.currentFontFamily)) {
    on<UpdateFontScale>((event, emit) async {
      await FontServices.setFontScale(event.scale);
      emit(state.copyWith(fontScale: event.scale));
    });

    on<UpdateFontFamily>((event, emit) async {
      await FontServices.setFontFamily(event.fontFamily);
      emit(state.copyWith(fontFamily: event.fontFamily));
    });
  }
}
