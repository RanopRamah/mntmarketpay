class Users {
  final dynamic id;
  final dynamic nama;
  final dynamic noHp;
  final dynamic tipe;
  final dynamic token;
  final dynamic createdAt;
  final dynamic updatedAt;

  const Users({
    required this.id,
    required this.nama,
    required this.noHp,
    required this.tipe,
    required this.token,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Users.fromJson(Map<dynamic, dynamic> json) {
    return Users(
      id: json['id'],
      nama: json['nama'],
      noHp: json['no_hp'],
      tipe: json['tipe'],
      token: json['token'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}