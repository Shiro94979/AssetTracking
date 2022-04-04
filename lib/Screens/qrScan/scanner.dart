import 'package:flutter/material.dart';
import 'package:projectapp/Screens/calendar/Scancomplete/calendar_navi2.dart';


import 'package:qr_code_scanner/qr_code_scanner.dart';

class Scanner extends StatefulWidget {
  Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  bool _flashOn = false;
  bool _frontCam = false;
  GlobalKey? _qrKey = GlobalKey();
  QRViewController? _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          QRView(
              key: _qrKey!,
              overlay: QrScannerOverlayShape(borderColor: Colors.green),
              onQRViewCreated: (QRViewController controller) {
                this._controller = controller;
                controller.scannedDataStream.listen((val) {
                  if (mounted) {
                    _controller!.dispose();
                    Navigator.pop(context);
                  }
                });
              }),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 60),
              child: Text(
                'Scanner',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _flashOn = !_flashOn;
                    });
                    _controller!.toggleFlash();
                  },
                  icon: Icon(_flashOn ? Icons.flash_on : Icons.flash_off),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _frontCam = !_frontCam;
                    });
                    _controller!.flipCamera();
                  },
                  icon:
                      Icon(_frontCam ? Icons.camera_front : Icons.camera_rear),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CalendarNavi2()));
                  },
                  icon: Icon(Icons.close),
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
