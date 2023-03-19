class Seller {
  final String saldo;
  final String transaksi;
  final String withdraw;
  final dynamic qrcode;
  final dynamic wd_qrcode;

  const Seller({
    required this.saldo,
    required this.withdraw,
    required this.transaksi,
    required this.qrcode,
    required this.wd_qrcode,
  });

  factory Seller.fromJson(Map<dynamic, dynamic> json) {
    return Seller(
      saldo: json['saldo'],
      withdraw: json['withdraw'],
      transaksi: json['transaksi'],
      qrcode: json['qrcode'],
      wd_qrcode: json['wd_qrcode'],
    );
  }
}