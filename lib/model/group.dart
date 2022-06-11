import 'dart:convert';

class Group {
  final int groupId;
  final String groupName;
  final String? groupImageUrl;
  final int? organizationId;
  Group({
    required this.groupId,
    required this.groupName,
    this.groupImageUrl,
    this.organizationId,
  });

  Group copyWith({
    int? groupId,
    String? groupName,
    String? groupImageUrl,
    int? organizationId,
  }) {
    return Group(
      groupId: groupId ?? this.groupId,
      groupName: groupName ?? this.groupName,
      groupImageUrl: groupImageUrl ?? this.groupImageUrl,
      organizationId: organizationId ?? this.organizationId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'groupId': groupId,
      'groupName': groupName,
      'groupImageUrl': groupImageUrl,
      'organizationId': organizationId,
    };
  }

  factory Group.fromMap(Map<String, dynamic> map) {
    return Group(
      groupId: map['groupId']?.toInt() ?? 0,
      groupName: map['groupName'] ?? '',
      groupImageUrl: map['groupImageUrl'],
      organizationId: map['organizationId']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Group.fromJson(String source) => Group.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Group(groupId: $groupId, groupName: $groupName, groupImageUrl: $groupImageUrl, organizationId: $organizationId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Group &&
      other.groupId == groupId &&
      other.groupName == groupName &&
      other.groupImageUrl == groupImageUrl &&
      other.organizationId == organizationId;
  }

  @override
  int get hashCode {
    return groupId.hashCode ^
      groupName.hashCode ^
      groupImageUrl.hashCode ^
      organizationId.hashCode;
  }
}
