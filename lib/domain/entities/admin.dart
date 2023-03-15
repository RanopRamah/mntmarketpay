class Admin {
  final dynamic totalSaldo;
  final dynamic totalBuyer;
  final dynamic totalSeller;
  final dynamic totalWithdraw;

  const Admin({
        required this.totalSaldo,
        required this.totalSeller,
        required this.totalBuyer,
        required this.totalWithdraw});

  factory Admin.fromJson(Map<dynamic, dynamic> json) {
    return Admin(
      totalSaldo: json['total_saldo'],
      totalBuyer: json['total_buyer'],
      totalSeller: json['total_seller'],
      totalWithdraw: json['total_withdraw'],
    );
  }
}