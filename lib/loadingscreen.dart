// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:p1/main.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _ResultState();
}

class _ResultState extends State<Loading> {
  //This function is to set the duration for the loading screen
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage(
                        title: 'Blah',
                      )),
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
