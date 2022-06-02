import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  String information;
  Info(this.information);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      constraints: BoxConstraints(
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(75, 57, 239, 2),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey,
            offset: Offset(0, 2),
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        information,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}
