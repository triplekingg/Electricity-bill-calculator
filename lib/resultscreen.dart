// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 130, 215, 235),
      body: Center(
          child: SpinKitCubeGrid(
        color: Colors.white,
        size: 140,
        duration: Duration(seconds: 2),
      )),
    );
  }
}
