import 'package:who_am_i/model/fake/fake.dart';
import 'package:who_am_i/model/user_quality_link.dart';

import '../user_quality_link_repository.dart';
class MockUserQualityLinkRepository implements IUserQualityLinkRepository {


   @override
  Map<int, UserQualityLink> mockDb = <int, UserQualityLink>{};

  @override
  UserQualityLink create(UserQualityLink object) {
    mockDb[object.userQualityLinkId] = object;
    return object;
  }

  @override
  bool delete(UserQualityLink object) {
    mockDb.remove(object.qualityId);
    return true;
  }

  @override
  UserQualityLink? getById(int id) {
    return mockDb[id];
  }

  @override
  bool update(UserQualityLink object) {
    // TODO: implement update
    throw UnimplementedError();
  }


}