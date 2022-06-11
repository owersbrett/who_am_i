import 'dart:convert';

class UserOrganizationLink {
  final int userOrganizationLink;
  final int createdByUserId;
  final int targetUserId;
  final int organizationId;
  final DateTime createDate;
  final bool approved;
  UserOrganizationLink({
    required this.userOrganizationLink,
    required this.createdByUserId,
    required this.targetUserId,
    required this.organizationId,
    required this.createDate,
    required this.approved,
  });

  UserOrganizationLink copyWith({
    int? userOrganizationLink,
    int? createdByUserId,
    int? targetUserId,
    int? organizationId,
    DateTime? createDate,
    bool? approved,
  }) {
    return UserOrganizationLink(
      userOrganizationLink: userOrganizationLink ?? this.userOrganizationLink,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      targetUserId: targetUserId ?? this.targetUserId,
      organizationId: organizationId ?? this.organizationId,
      createDate: createDate ?? this.createDate,
      approved: approved ?? this.approved,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userOrganizationLink': userOrganizationLink,
      'createdByUserId': createdByUserId,
      'targetUserId': targetUserId,
      'organizationId': organizationId,
      'createDate': createDate.millisecondsSinceEpoch,
      'approved': approved,
    };
  }

  factory UserOrganizationLink.fromMap(Map<String, dynamic> map) {
    return UserOrganizationLink(
      userOrganizationLink: map['userOrganizationLink']?.toInt() ?? 0,
      createdByUserId: map['createdByUserId']?.toInt() ?? 0,
      targetUserId: map['targetUserId']?.toInt() ?? 0,
      organizationId: map['organizationId']?.toInt() ?? 0,
      createDate: DateTime.fromMillisecondsSinceEpoch(map['createDate']),
      approved: map['approved'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserOrganizationLink.fromJson(String source) => UserOrganizationLink.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserOrganizationLink(userOrganizationLink: $userOrganizationLink, createdByUserId: $createdByUserId, targetUserId: $targetUserId, organizationId: $organizationId, createDate: $createDate, approved: $approved)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserOrganizationLink &&
      other.userOrganizationLink == userOrganizationLink &&
      other.createdByUserId == createdByUserId &&
      other.targetUserId == targetUserId &&
      other.organizationId == organizationId &&
      other.createDate == createDate &&
      other.approved == approved;
  }

  @override
  int get hashCode {
    return userOrganizationLink.hashCode ^
      createdByUserId.hashCode ^
      targetUserId.hashCode ^
      organizationId.hashCode ^
      createDate.hashCode ^
      approved.hashCode;
  }
}
