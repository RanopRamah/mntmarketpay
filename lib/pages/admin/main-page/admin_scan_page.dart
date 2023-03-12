import 'dart:developer';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class AdminScanPage extends StatefulWidget {
  const AdminScanPage({super.key,});

  @override
  State<AdminScanPage> createState() => _AdminScanPageState();
}

class _AdminScanPageState extends State<AdminScanPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.resumeCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: QrScannerOverlayShape(
              borderColor: const Color(0xFFE4F789),
              borderRadius: 76,
              borderLength: 100,
              borderWidth: 20,
              cutOutSize: 350,
            ),
            onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        print(scanData);
      });
    });
  }
  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
// void isThisJson() {
//   var output = result!.code;
//   var response = jsonDecode(output!);
//
//   controller!.dispose();
//
//   if (response['nama'] != null) {
//     Navigator.of(context).push(MaterialPageRoute(
//         builder: (ctx) => NominalPage(response['no_hp'], response['nama'])));
//   } else {
//     Navigator.of(context)
//         .push(MaterialPageRoute(builder: (ctx) => const BuyerHomePage()));
//   }
// }
}
