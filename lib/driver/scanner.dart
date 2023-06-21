import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key, }) : super(key: key);
  

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  final GlobalKey _gLobalkey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
     setState(() {
       result = event;
     });
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
         // leading: BackButton(color: Colors.black),
          backgroundColor:Color.fromARGB(255, 254	,198	,40),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 4,),
              Image.asset('assets/bus5.jpeg',
              fit: BoxFit.cover,
              height: 50,),
              SizedBox(width:10 ,),
              Text("WASLNA",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'ZCOOL XiaoWei',
                color: Colors.black
              ),),
            ],
          ) ,
        ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 20.0, right: 20.0,),
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        
              Text("Scann QR ",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        textAlign: TextAlign.center),
                    const SizedBox(
                      height: 80,
                    )
                    ,
        
        
        
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 3,
                    ),
                  ),
                height: 300,
                width: 300,
                child: QRView(
                    key: _gLobalkey,
                    onQRViewCreated: qr
                ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(right:50 ,left:50 ,bottom: 10),
                   width: 300,
                   height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.amber,
                      width: 3,
                    ),
                  ),
                child: Center(
                  child: (result !=null) ? Text('${result!.code}') : Text('Scan a code'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}

/*import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:camera/camera.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScannerPage(),
    );
  }
}

class ScannerPage extends StatefulWidget {
  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  late CameraController _controller;
  bool _scanning = false;
  String _result = '';

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final camera = cameras.first;
    _controller = CameraController(camera, ResolutionPreset.high);
    await _controller.initialize();
    setState(() {});
    _startScan();
  }

  Future<void> _startScan() async {
    if (_controller != null && _controller.value.isInitialized) {
      setState(() {
        _scanning = true;
      });

      while (_scanning) {
        try {
          final result = await scanQRCode();
          setState(() {
            _result = result!;
          });
        } on PlatformException catch (ex) {
          if (ex.code == 'cameraAccessDenied') {
            setState(() {
              _result = 'Camera permission not granted';
            });
          } else {
            setState(() {
              _result = 'Unknown error: $ex';
            });
          }
        } catch (ex) {
          setState(() {
            _result = 'Unknown error: $ex';
          });
        }
      }
    }
  }

  Future<String?> scanQRCode() async {
    if (_controller != null && _controller.value.isInitialized) {
      final image = await _controller.takePicture();
      final bytes = await image.readAsBytes();
      // TODO: Implement QR code decoding logic here
      return 'QR code not implemented';
    }
    return null;
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null || !_controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                CameraPreview(_controller),
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2 - 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2 - 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                    ),width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2 - 50,
                   
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 2,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(_scanning ? 'Scanning...' : 'Scan a QR code'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(_result),
            ),
          ),
        ],
      ),
    );
  }
}

*/




