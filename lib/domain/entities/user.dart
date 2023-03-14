class Users {
  final dynamic id;
  final dynamic nama;
  final dynamic noHp;
  final dynamic pin;
  final dynamic tipe;
  final dynamic rememberToken;
  final dynamic createdAt;
  final dynamic updatedAt;

  const Users({
    required this.id,
    required this.nama,
    required this.noHp,
    required this.pin,
    required this.tipe,
    required this.rememberToken,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Users.fromJson(Map<dynamic, dynamic> json) {
    return Users(
      id: json['id'],
      nama: json['nama'],
      noHp: json['no_hp'],
      pin: json['pin'],
      tipe: json['tipe'],
      rememberToken: json['remember_token'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}