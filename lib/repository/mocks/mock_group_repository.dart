import 'package:who_am_i/model/fake/fake.dart';
import 'package:who_am_i/model/group.dart';

import '../group_repository.dart';

class MockGroupRepository implements IGroupRepository {
  @override
  Map<int, Group> mockDb = <int, Group>{};

  @override
  Group create(Group t) {
    mockDb[t.groupId] = t;
    return t;
  }

  @override
  bool delete(t) {
    mockDb.remove(t.groupId);
    return true;
  }

  @override
  Group getById(int id) {
    Group? group = mockDb[id];
    return group ?? Fake.group;
  }

  @override
  bool update(t) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
