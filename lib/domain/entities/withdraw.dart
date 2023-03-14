
class Withdraw {
  final dynamic id;
  final dynamic nota;
  final dynamic pengirim;
  final dynamic penerima;
  final dynamic nominal;
  final dynamic createdAt;

  const Withdraw({
    required this.id,
    required this.nota,
    required this.pengirim,
    required this.penerima,
    required this.nominal,
    required this.createdAt,
  });

  factory Withdraw.fromJson(Map<dynamic, dynamic> json) {
    return Withdraw(
      id: json['id'],
      nota: json['nota'],
      pengirim: json['pengirim'],
      penerima: json['penerima'],
      nominal: json['nominal'],
      createdAt: json['created_at'],
    );
  }
}