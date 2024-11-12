import 'dart:async';

import 'package:equatable/equatable.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_content_state.dart';
part 'home_content_event.dart';

class HomeContentBloc extends Bloc<HomeContentEvent, HomeContentState> {
  HomeContentBloc() : super(const HomeContentState()) {
    on<OnHoverEvent>(onHoverEvent);
  }

  FutureOr<void> onHoverEvent(
      OnHoverEvent event, Emitter<HomeContentState> emit) {
    emit(state.copyWith(
        onProfileHover: event.onProfileHover,
        onWorksHover: event.onWorksHover,
        onContactsHover: event.onContactsHover));
  }
}
