import 'dart:convert';

class User {
  final int userId;
  final String username;
  final String? profileImageUrl;
  final DateTime createDate;
  final DateTime updateDate;
  User({
    required this.userId,
    required this.username,
    this.profileImageUrl,
    required this.createDate,
    required this.updateDate,
  });


  User copyWith({
    int? userId,
    String? username,
    String? profileImageUrl,
    DateTime? createDate,
    DateTime? updateDate,
  }) {
    return User(
      userId: userId ?? this.userId,
      username: username ?? this.username,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      createDate: createDate ?? this.createDate,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'username': username,
      'profileImageUrl': profileImageUrl,
      'createDate': createDate.millisecondsSinceEpoch,
      'updateDate': updateDate.millisecondsSinceEpoch,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['userId']?.toInt() ?? 0,
      username: map['username'] ?? '',
      profileImageUrl: map['profileImageUrl'],
      createDate: DateTime.fromMillisecondsSinceEpoch(map['createDate']),
      updateDate: DateTime.fromMillisecondsSinceEpoch(map['updateDate']),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(userId: $userId, username: $username, profileImageUrl: $profileImageUrl, createDate: $createDate, updateDate: $updateDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is User &&
      other.userId == userId &&
      other.username == username &&
      other.profileImageUrl == profileImageUrl &&
      other.createDate == createDate &&
      other.updateDate == updateDate;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
      username.hashCode ^
      profileImageUrl.hashCode ^
      createDate.hashCode ^
      updateDate.hashCode;
  }
}
