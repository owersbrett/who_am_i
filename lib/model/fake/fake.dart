import 'package:who_am_i/model/group.dart';
import 'package:who_am_i/model/organization.dart';
import 'package:who_am_i/model/quality.dart';
import 'package:who_am_i/model/user.dart';

abstract class Fake {
  static Group group = Group(groupId: 0, groupName: "Group");
  static Organization organization = Organization(organizationId: 0, organizationName: "Organization");
  static Quality quality = Quality(qualityId: 0, qualityName: "Quality", qualityBenefits: "Useful, effective, productive, kind, thoughtful.", excessiveDrawbacks: "Diva, arrogant, excessive, procrastinate", deficiencyDrawbacks: "Creates little to no value.", versionId: 0);
  static User user = User(userId: 0, username: "User", createDate: DateTime.now(), updateDate: DateTime.now());

}