// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:p1/main.dart';
import 'custombutton.dart';

class Result extends StatelessWidget {
  double result;

  Result(this.result);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(199, 180, 217, 225),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(-0.05, -0.05),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Container(
                  width: 250,
                  height: 250,
                  constraints: BoxConstraints(
                    maxWidth: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, 130, 215, 235),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x4D000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      //Display Result here converted to string
                      child: Center(
                          child: Text(
                        result.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Open_Sans',
                            fontSize: 60,
                            fontStyle: FontStyle.normal,
                            color: Colors.white),
                      ))),
                ),
              ),
            ),
            CustomButton("BACK", () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: 'title')));
            }, Color.fromARGB(200, 130, 215, 235))
          ],
        )));
  }
}
