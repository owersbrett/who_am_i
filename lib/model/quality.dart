import 'dart:convert';

class Quality {
  final int qualityId;
  final String qualityName;
  final String qualityBenefits;
  final String excessiveDrawbacks;
  final String deficiencyDrawbacks;
  final int versionId;
  Quality({
    required this.qualityId,
    required this.qualityName,
    required this.qualityBenefits,
    required this.excessiveDrawbacks,
    required this.deficiencyDrawbacks,
    required this.versionId,
  });
  

  Quality copyWith({
    int? qualityId,
    String? qualityName,
    String? qualityBenefits,
    String? excessiveDrawbacks,
    String? deficiencyDrawbacks,
    int? versionId,
  }) {
    return Quality(
      qualityId: qualityId ?? this.qualityId,
      qualityName: qualityName ?? this.qualityName,
      qualityBenefits: qualityBenefits ?? this.qualityBenefits,
      excessiveDrawbacks: excessiveDrawbacks ?? this.excessiveDrawbacks,
      deficiencyDrawbacks: deficiencyDrawbacks ?? this.deficiencyDrawbacks,
      versionId: versionId ?? this.versionId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'qualityId': qualityId,
      'qualityName': qualityName,
      'qualityBenefits': qualityBenefits,
      'excessiveDrawbacks': excessiveDrawbacks,
      'deficiencyDrawbacks': deficiencyDrawbacks,
      'versionId': versionId,
    };
  }

  factory Quality.fromMap(Map<String, dynamic> map) {
    return Quality(
      qualityId: map['qualityId']?.toInt() ?? 0,
      qualityName: map['qualityName'] ?? '',
      qualityBenefits: map['qualityBenefits'] ?? '',
      excessiveDrawbacks: map['excessiveDrawbacks'] ?? '',
      deficiencyDrawbacks: map['deficiencyDrawbacks'] ?? '',
      versionId: map['versionId']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Quality.fromJson(String source) => Quality.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Quality(qualityId: $qualityId, qualityName: $qualityName, qualityBenefits: $qualityBenefits, excessiveDrawbacks: $excessiveDrawbacks, deficiencyDrawbacks: $deficiencyDrawbacks, versionId: $versionId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Quality &&
      other.qualityId == qualityId &&
      other.qualityName == qualityName &&
      other.qualityBenefits == qualityBenefits &&
      other.excessiveDrawbacks == excessiveDrawbacks &&
      other.deficiencyDrawbacks == deficiencyDrawbacks &&
      other.versionId == versionId;
  }

  @override
  int get hashCode {
    return qualityId.hashCode ^
      qualityName.hashCode ^
      qualityBenefits.hashCode ^
      excessiveDrawbacks.hashCode ^
      deficiencyDrawbacks.hashCode ^
      versionId.hashCode;
  }
}
