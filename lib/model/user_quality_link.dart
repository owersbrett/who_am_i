import 'dart:convert';

import 'package:who_am_i/enum/quality_characterization.dart';

class UserQualityLink {
  final int userQualityLinkId;
  final int qualityId;
  final int createdByUserId;
  final int targetUserId;
  final DateTime createDate;
  final QualityCharacterization qualityCharacterization;
  UserQualityLink({
    required this.userQualityLinkId,
    required this.qualityId,
    required this.createdByUserId,
    required this.targetUserId,
    required this.createDate,
    required this.qualityCharacterization,
  });

  UserQualityLink copyWith({
    int? userQualityLinkId,
    int? qualityId,
    int? createdByUserId,
    int? targetUserId,
    DateTime? createDate,
    QualityCharacterization? qualityCharacterization,
  }) {
    return UserQualityLink(
      userQualityLinkId: userQualityLinkId ?? this.userQualityLinkId,
      qualityId: qualityId ?? this.qualityId,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      targetUserId: targetUserId ?? this.targetUserId,
      createDate: createDate ?? this.createDate,
      qualityCharacterization: qualityCharacterization ?? this.qualityCharacterization,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userQualityLinkId': userQualityLinkId,
      'qualityId': qualityId,
      'createdByUserId': createdByUserId,
      'targetUserId': targetUserId,
      'createDate': createDate.millisecondsSinceEpoch,
      'qualityCharacterization': qualityCharacterization.toString(),
    };
  }

  factory UserQualityLink.fromMap(Map<String, dynamic> map) {
    return UserQualityLink(
      userQualityLinkId: map['userQualityLinkId']?.toInt() ?? 0,
      qualityId: map['qualityId']?.toInt() ?? 0,
      createdByUserId: map['createdByUserId']?.toInt() ?? 0,
      targetUserId: map['targetUserId']?.toInt() ?? 0,
      createDate: DateTime.fromMillisecondsSinceEpoch(map['createDate']),
      qualityCharacterization: QualityCharacterizationHelper.fromString(map['qualityCharacterization']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserQualityLink.fromJson(String source) => UserQualityLink.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserQualityLink(userQualityLinkId: $userQualityLinkId, qualityId: $qualityId, createdByUserId: $createdByUserId, targetUserId: $targetUserId, createDate: $createDate, qualityCharacterization: $qualityCharacterization)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserQualityLink &&
      other.userQualityLinkId == userQualityLinkId &&
      other.qualityId == qualityId &&
      other.createdByUserId == createdByUserId &&
      other.targetUserId == targetUserId &&
      other.createDate == createDate &&
      other.qualityCharacterization == qualityCharacterization;
  }

  @override
  int get hashCode {
    return userQualityLinkId.hashCode ^
      qualityId.hashCode ^
      createdByUserId.hashCode ^
      targetUserId.hashCode ^
      createDate.hashCode ^
      qualityCharacterization.hashCode;
  }
}
