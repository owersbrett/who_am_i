import 'package:who_am_i/model/organization.dart';

import '../organization_repository.dart';

class MockOrganizationRepository implements IOrganizationRepository {
  @override
  Map<int, Organization> mockDb = <int, Organization>{};

  @override
  Organization create(Organization object) {
    mockDb[object.organizationId] = object;
    return object;
  }

  @override
  bool delete(Organization object) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Organization getById(int id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  bool update(Organization object) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
