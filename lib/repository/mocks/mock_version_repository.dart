import 'package:who_am_i/model/version.dart';

import '../version_repository.dart';
class MockVersionRepository implements IVersionRepository {

  @override
  Map<int, Version> mockDb = <int, Version>{};


  @override
  Version create(Version object) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  bool delete(Version object) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Version getById(int id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  bool update(Version object) {
    // TODO: implement update
    throw UnimplementedError();
  }




}