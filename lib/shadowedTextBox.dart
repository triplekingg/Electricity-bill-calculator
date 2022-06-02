// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pHolder extends StatelessWidget {
  String instruction;

  pHolder(this.instruction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromARGB(200, 130, 215, 235),
      ),
      child: Align(
        alignment: AlignmentDirectional(0, 0.05),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Text(
                instruction,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Container(
                width: 150,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey,
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                  child: TextFormField(
                    // controller: textController,
                    // onChanged: (_) => EasyDebounce.debounce(
                    //   'textController',
                    //   Duration(milliseconds: 2000),
                    //   () => setState(() {}),
                    // ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
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
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
