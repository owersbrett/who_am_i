import 'package:who_am_i/model/quality.dart';

import '../user.dart';

abstract class Default {
  static final User user = User(userId: 0, username: "User", createDate: DateTime.now(), updateDate: DateTime.now());
  static final Map<String, Quality> qualities = {
    "": Quality()
  };
}
