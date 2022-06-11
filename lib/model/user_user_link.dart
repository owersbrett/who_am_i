import 'dart:convert';

class UserUserLink {
  final int userUserLinkId;
  final int createdByUserId;
  final int targetUserId;
  final DateTime createDate;
  
  final bool approveLink;
  UserUserLink({
    required this.userUserLinkId,
    required this.createdByUserId,
    required this.targetUserId,
    required this.createDate,
    required this.approveLink,
  });

  UserUserLink copyWith({
    int? userUserLinkId,
    int? createdByUserId,
    int? targetUserId,
    DateTime? createDate,
    bool? approveLink,
  }) {
    return UserUserLink(
      userUserLinkId: userUserLinkId ?? this.userUserLinkId,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      targetUserId: targetUserId ?? this.targetUserId,
      createDate: createDate ?? this.createDate,
      approveLink: approveLink ?? this.approveLink,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userUserLinkId': userUserLinkId,
      'createdByUserId': createdByUserId,
      'targetUserId': targetUserId,
      'createDate': createDate.millisecondsSinceEpoch,
      'approveLink': approveLink,
    };
  }

  factory UserUserLink.fromMap(Map<String, dynamic> map) {
    return UserUserLink(
      userUserLinkId: map['userUserLinkId']?.toInt() ?? 0,
      createdByUserId: map['createdByUserId']?.toInt() ?? 0,
      targetUserId: map['targetUserId']?.toInt() ?? 0,
      createDate: DateTime.fromMillisecondsSinceEpoch(map['createDate']),
      approveLink: map['approveLink'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserUserLink.fromJson(String source) => UserUserLink.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserUserLink(userUserLinkId: $userUserLinkId, createdByUserId: $createdByUserId, targetUserId: $targetUserId, createDate: $createDate, approveLink: $approveLink)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserUserLink &&
      other.userUserLinkId == userUserLinkId &&
      other.createdByUserId == createdByUserId &&
      other.targetUserId == targetUserId &&
      other.createDate == createDate &&
      other.approveLink == approveLink;
  }

  @override
  int get hashCode {
    return userUserLinkId.hashCode ^
      createdByUserId.hashCode ^
      targetUserId.hashCode ^
      createDate.hashCode ^
      approveLink.hashCode;
  }
}
