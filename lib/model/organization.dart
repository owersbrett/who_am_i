import 'dart:convert';

class Organization {
  final int organizationId;
  final String organizationName;
  final String? organizationImageUrl;
  Organization({
    required this.organizationId,
    required this.organizationName,
    this.organizationImageUrl,
  });

  Organization copyWith({
    int? organizationId,
    String? organizationName,
    String? organizationImageUrl,
  }) {
    return Organization(
      organizationId: organizationId ?? this.organizationId,
      organizationName: organizationName ?? this.organizationName,
      organizationImageUrl: organizationImageUrl ?? this.organizationImageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'organizationId': organizationId,
      'organizationName': organizationName,
      'organizationImageUrl': organizationImageUrl,
    };
  }

  factory Organization.fromMap(Map<String, dynamic> map) {
    return Organization(
      organizationId: map['organizationId']?.toInt() ?? 0,
      organizationName: map['organizationName'] ?? '',
      organizationImageUrl: map['organizationImageUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Organization.fromJson(String source) => Organization.fromMap(json.decode(source));

  @override
  String toString() =>
      'Organization(organizationId: $organizationId, organizationName: $organizationName, organizationImageUrl: $organizationImageUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Organization &&
        other.organizationId == organizationId &&
        other.organizationName == organizationName &&
        other.organizationImageUrl == organizationImageUrl;
  }

  @override
  int get hashCode => organizationId.hashCode ^ organizationName.hashCode ^ organizationImageUrl.hashCode;
}
