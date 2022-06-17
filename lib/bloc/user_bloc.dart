import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'user.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on(_onEvent);
  }
  void _onEvent(UserEvent event, Emitter<UserState> emit) async {
    if (event is SetUser) await _setUser(event, emit);
  }

  FutureOr<void> _setUser(SetUser event, Emitter<UserState> emit) async {
    emit(UserLoaded(event.user));
  }
}
