import 'dart:io';
import 'package:flutter/material.dart';
import 'package:newproject/screens/qr/screen_qrscaned.dart';
import 'package:newproject/screens/screen_home.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQRPage extends StatefulWidget {
  const ScanQRPage({Key? key}) : super(key: key);

  @override
  _ScanQRPageState createState() => _ScanQRPageState();
}

class _ScanQRPageState extends State<ScanQRPage> {
  final GlobalKey qrKey = GlobalKey();
  late QRViewController controller;
  Barcode? result;
//in order to get hot reload to work.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    } else if (Platform.isIOS) {
      controller.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                QRView(
                  key: qrKey,
                  onQRViewCreated: onQRViewCreated,
                  overlayMargin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height / 3),
                  overlay: QrScannerOverlayShape(
//customizing scan area
                    borderWidth: 10,
                    borderColor: Colors.blue,
                    borderLength: 30,
                    borderRadius: 10,
                    cutOutSize: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
                Positioned(
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 230),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        // color: Colors.black26,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              icon: const Icon(
                                Icons.flip_camera_ios,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                await controller.flipCamera();
                              }),
                          IconButton(
                              icon: const Icon(
                                Icons.flash_on,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                await controller.toggleFlash();
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 100),
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(
                                    builder: (context) => const ScreenHome()));
                              },
                              child: const Text(
                                "Skip",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     margin: const EdgeInsets.all(8.0),
          //     width: double.infinity,
          //     color: Colors.white,
          //     child: Center(
          //       child: result != null
          //           ? Column(
          //               children: [
          //                 Text('Code: ${result!.code}'),
          //                 const SizedBox(
          //                   height: 8.0,
          //                 ),
          //                 Text('Format: ${result!.format}'),

          //                 // ElevatedButton(
          //                 //   onPressed: () async {
          //                 //     log('${result!.code}');

          //                 //     await launch('${result!.code}');
          //                 //   },
          //                 //   child: const Text('Open'),
          //                 // )
          //               ],
          //             )
          //           : const Text('Scan your barcode'),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  void onQRViewCreated(QRViewController p1) {
//called when View gets created.
    controller = p1;

    controller.scannedDataStream.listen((scanevent) async {
      setState(() {
//UI gets created with new QR code.
        result = scanevent;
        _launcher();
      });
    });
  }
  
  _launcher() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ScreenScanedQr(data: result!.code!)));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
