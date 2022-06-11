import 'package:who_am_i/model/quality.dart';

import '../quality_repository.dart';

class MockQualityRepository implements IQualityRepository {
  @override
  Map<int, Quality> mockDb = <int, Quality>{};

  @override
  Quality create(Quality t) {
    mockDb[t.qualityId] = t;
    return t;
  }

  @override
  bool delete(Quality object) {
    mockDb.remove(object.qualityId);
    return true;
  }

  @override
  Quality? getById(int id) {
    return mockDb[id];
  }

  @override
  bool update(Quality object) {
    mockDb[object.qualityId] = object;
    return true;
  }
}
