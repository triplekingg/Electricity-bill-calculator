// ignore_for_file: sort_child_properties_last, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  //Pass text as argument
  String ButtonText;
  //Pass function as argument
  VoidCallback actions;

  CustomButton(this.ButtonText, this.actions);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Color.fromRGBO(75, 57, 239, 2)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  side: BorderSide(color: Color.fromRGBO(75, 57, 239, 2))))),
      // ignore: prefer_const_constructors
      child: Text(
        ButtonText,
        style:
            TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 24),
      ),
      onPressed: actions,
    );
  }
}
