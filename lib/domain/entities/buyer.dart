class Buyer {
  final dynamic saldo;
  final dynamic topup;
  final dynamic transaksi;
  final dynamic withdraw;
  final dynamic wdQr;

  const Buyer({
    required this.saldo,
    required this.topup,
    required this.transaksi,
    required this.withdraw,
    required this.wdQr,
  });

  factory Buyer.fromJson(Map<dynamic, dynamic> json) {
    return Buyer(
      saldo: json['saldo'],
      topup: json['topup'],
      transaksi: json['transaksi'],
      withdraw: json['withdraw'],
      wdQr: json['wd_qrcode'],
    );
  }
}