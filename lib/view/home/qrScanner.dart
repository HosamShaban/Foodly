import 'package:flutter/material.dart';
import 'package:foodly/view/home/browse_food_screen.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  bool _flashOn = false;
  bool _frontCam = false;
  final GlobalKey _qrKey = GlobalKey();
   late QRViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           QRView(
                key: _qrKey,
                overlay: QrScannerOverlayShape(
                  borderColor: Colors.white,
                ),
                onQRViewCreated:(QRViewController controller){
                  _controller = controller;
                  controller.scannedDataStream.listen((val) {
                   Navigator.push(context , MaterialPageRoute(builder: (context) =>const  BrowseFoodScreen()));
                  });
                }
            ),
          Container(
            height: 134,
            width: 224,
            decoration: BoxDecoration(
              // color: ConstColors.whiteFontColor,
              borderRadius: BorderRadius.circular(10),
            ),

          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(_flashOn? Icons.flash_on : Icons.flash_off, color: Colors.white),
                  onPressed:(){
                      setState(() {
                        _flashOn = !_flashOn;
                      });
                      _controller.toggleFlash();
                    },
                ),
                IconButton(
                  icon: Icon(_frontCam? Icons.camera_front :Icons.camera_rear,color: Colors.white),
                  onPressed:(){
                      setState(() {
                        _frontCam = !_frontCam;
                      });
                      _controller.flipCamera();
                    },
                ),
                IconButton(
                    onPressed:(){
                      Navigator.pop(context);
                    },
                    icon:const Icon(Icons.close, color: Colors.white)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
