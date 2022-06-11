import 'dart:convert';

class UserGroupLink {
  final int userGroupLinkId;
  final int createdByUserId;
  final int targetUserId;
  final int groupId;
  UserGroupLink({
    required this.userGroupLinkId,
    required this.createdByUserId,
    required this.targetUserId,
    required this.groupId,
  });

  UserGroupLink copyWith({
    int? userGroupLinkId,
    int? createdByUserId,
    int? targetUserId,
    int? groupId,
  }) {
    return UserGroupLink(
      userGroupLinkId: userGroupLinkId ?? this.userGroupLinkId,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      targetUserId: targetUserId ?? this.targetUserId,
      groupId: groupId ?? this.groupId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userGroupLinkId': userGroupLinkId,
      'createdByUserId': createdByUserId,
      'targetUserId': targetUserId,
      'groupId': groupId,
    };
  }

  factory UserGroupLink.fromMap(Map<String, dynamic> map) {
    return UserGroupLink(
      userGroupLinkId: map['userGroupLinkId']?.toInt() ?? 0,
      createdByUserId: map['createdByUserId']?.toInt() ?? 0,
      targetUserId: map['targetUserId']?.toInt() ?? 0,
      groupId: map['groupId']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserGroupLink.fromJson(String source) => UserGroupLink.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserGroupLink(userGroupLinkId: $userGroupLinkId, createdByUserId: $createdByUserId, targetUserId: $targetUserId, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserGroupLink &&
      other.userGroupLinkId == userGroupLinkId &&
      other.createdByUserId == createdByUserId &&
      other.targetUserId == targetUserId &&
      other.groupId == groupId;
  }

  @override
  int get hashCode {
    return userGroupLinkId.hashCode ^
      createdByUserId.hashCode ^
      targetUserId.hashCode ^
      groupId.hashCode;
  }
}
