import 'dart:convert';

class Version {
  final int versionId;
  Version({
    required this.versionId,
  });

  Version copyWith({
    int? versionId,
  }) {
    return Version(
      versionId: versionId ?? this.versionId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'versionId': versionId,
    };
  }

  factory Version.fromMap(Map<String, dynamic> map) {
    return Version(
      versionId: map['versionId']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Version.fromJson(String source) => Version.fromMap(json.decode(source));

  @override
  String toString() => 'Version(versionId: $versionId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Version &&
      other.versionId == versionId;
  }

  @override
  int get hashCode => versionId.hashCode;
}
