// ignore_for_file: sort_child_properties_last, prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  //Pass text as argument
  String ButtonText;
  //Pass function as argument
  VoidCallback actions;
  Color c;

  CustomButton(this.ButtonText, this.actions, this.c);

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
