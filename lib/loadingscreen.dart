// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:p1/main.dart';
import 'results.dart';

class Loading extends StatefulWidget {
  double result;
  Loading(this.result);
  @override
  State<Loading> createState() => _ResultState(result);
}

class _ResultState extends State<Loading> {
  double res;
  _ResultState(this.res);
  //This function is to set the duration for the loading screen
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Result(res)),
            ));
  }

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
