
class Transaction {
  final dynamic id;
  final dynamic nota;
  final dynamic pengirim;
  final dynamic penerima;
  final dynamic nominal;
  final dynamic createdAt;

  const Transaction({
    required this.id,
    required this.nota,
    required this.pengirim,
    required this.penerima,
    required this.nominal,
    required this.createdAt,
  });

  factory Transaction.fromJson(Map<dynamic, dynamic> json) {
    return Transaction(
      id: json['id'],
      nota: json['nota'],
      pengirim: json['pengirim'],
      penerima: json['penerima'],
      nominal: json['nominal'],
      createdAt: json['created_at'],
    );
  }
}