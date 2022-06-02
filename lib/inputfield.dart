// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  //Pass textcontroller variable
  final TextEditingController val;
  //pass instruction variable
  final String instruction;

  const CustomField(this.instruction, this.val);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        padding: EdgeInsets.all(6),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: instruction,
            contentPadding: EdgeInsets.all(4),
            isDense: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
                bottomLeft: Radius.circular(4.0),
                bottomRight: Radius.circular(4.0),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
                bottomLeft: Radius.circular(4.0),
                bottomRight: Radius.circular(4.0),
              ),
            ),
          ),
          autofocus: false,
          controller: val,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ));
  }
}
