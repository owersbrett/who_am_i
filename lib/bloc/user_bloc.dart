import 'package:flutter_bloc/flutter_bloc.dart';
import 'user.dart';
class UserBloc extends Bloc<UserEvent, UserState> {
UserBloc() : super(UserInitial()){
on(_onEvent);
}
void _onEvent(UserEvent event, Emitter<UserState> emit){
}
}