import 'package:flutter/material.dart';

class ImgWidget extends StatelessWidget {
  String img;

  ImgWidget(this.img);

  @override
  Widget build(BuildContext context) {
    return Align(
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
            child: Image.asset(
              img,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
