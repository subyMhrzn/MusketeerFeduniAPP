import 'package:flutter/material.dart';
import 'package:musketeer_app/ReceiptScanner/receipt_scanner_screen.dart';

// import 'barcode_scanner.dart';

class ScanGroceryScreen extends StatelessWidget {
  const ScanGroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                height: 230,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ReceiptScannerScreen()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 204, 202, 202)),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(20)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 150,
                          width: 200,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 40,
                                left: 60,
                                child: Image.asset(
                                    width: 90,
                                    height: 90,
                                    'lib/Icons/Miscell/Barcode.png'),
                              ),
                              Positioned(
                                top: 5,
                                left: 10,
                                child: Image.asset(
                                  width: 90,
                                  height: 90,
                                  'lib/Icons/Miscell/Camera.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'Scan Barcode',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 28,
                              color: Colors.black),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 350,
                height: 230,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ReceiptScannerScreen()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 204, 202, 202)),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(20)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Image.asset(
                              width: 60,
                              height: 60,
                              'lib/Icons/Buttons/Upload.png'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Scan / upload Receipt',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
