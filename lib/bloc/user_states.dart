import 'package:equatable/equatable.dart';
class UserState extends Equatable {
const UserState();
@override
List<Object> get props => [];
}
class UserInitial extends UserState {}
class UserEmpty extends UserState {}
class UserLoading extends UserState {}
class UserError extends UserState {}
class UserLoaded extends UserState {}