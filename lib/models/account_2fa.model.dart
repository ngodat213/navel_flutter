class Account2FAModel {
  int id;
  String type;
  String username;

  Account2FAModel({
    required this.id,
    required this.type,
    required this.username,
  });

  factory Account2FAModel.fromJson(Map<String, dynamic> json) {
    return Account2FAModel(
      id: json['id'],
      type: json['type'],
      username: json['username'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'type': type,
    };
  }
}
