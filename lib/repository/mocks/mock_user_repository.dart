import 'package:who_am_i/model/user.dart';

import '../user_repository.dart';
class MockUserRepository implements IUserRepository {
  @override
  Map<int, User> mockDb = <int, User>{};


  @override
  User create(User object) {  
    mockDb[object.userId] = object;
    return object;
  }

  @override
  bool delete(object) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  getById(int id) {
    return mockDb[id];
  }

  @override
  bool update(object) {
    // TODO: implement update
    throw UnimplementedError();
  }


  

}