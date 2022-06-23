// ignore_for_file: prefer_const_constructors

import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/material.dart';

class CameraWidget extends StatelessWidget {
  const CameraWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: scanner.scanPhoto(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Center(
            child: Text('Scan QR code'),
          );
        }
      }),
    );
  }
}
