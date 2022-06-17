import '../model/user.dart';

abstract class UserEvent {
  const UserEvent();
}

class SetUser extends UserEvent {
  SetUser(this.user);
  final User user;
}
