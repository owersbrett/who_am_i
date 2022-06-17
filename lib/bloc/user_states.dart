import 'package:equatable/equatable.dart';
import 'package:who_am_i/model/default/default.dart';
import 'package:who_am_i/model/user.dart';

abstract class UserState extends Equatable {
  User get user;
  @override
  List<Object?> get props => [user];
}

class UserInitial extends UserState {
  @override
  User get user => Default.user;
}

class UserLoading extends UserState {
  @override
  User get user => Default.user;
}

class UserError extends UserState {
  @override
  User get user => Default.user;
}

class UserLoaded extends UserState {
  UserLoaded(this._user);
  final User _user;

  @override
  User get user => _user;
}
