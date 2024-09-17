class UserModel {
  int id;

  String name;
  String? code;
  String email;
  String phone;
  String? rawPhone;
  String? countryCode;
  String photo;
  String role;
  String walletAddress;
  String? rating;
  String? trip;
  String? responseRate;
  String? rateOfAgreement;
  String? feedbackIn;
  DateTime? createdAt;
  UserModel({
    required this.id,
    this.code,
    required this.name,
    required this.email,
    required this.phone,
    this.rawPhone,
    required this.countryCode,
    required this.photo,
    required this.role,
    required this.walletAddress,
    this.rating,
    this.trip = '0',
    this.responseRate = '100%',
    this.rateOfAgreement = "100%",
    this.feedbackIn = '10',
    this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      code: json['code'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'] ?? "",
      rawPhone: json['raw_phone'],
      walletAddress: json['wallet_address'] ?? "",
      countryCode: json['country_code'],
      photo: json['photo'] ?? "",
      role: json['role_name'] ?? "client",
      rating: json['rating'] ?? "0",
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'name': name,
      'email': email,
      'phone': phone,
      'raw_phone': rawPhone,
      'country_code': countryCode,
      'photo': photo,
      'role_name': role,
      'wallet_address': walletAddress,
      'rating': rating,
    };
  }
}
