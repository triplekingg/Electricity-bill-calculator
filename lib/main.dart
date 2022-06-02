// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';
import 'loadingscreen.dart';
import 'inputfield.dart';
import 'custombutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double result = 0;
  final kwh = TextEditingController();
  final hours = TextEditingController();
  final wattage = TextEditingController();

  void calculate() {
    double? kwHVal = double.tryParse(kwh.text);
    double? hoursVal = double.tryParse(hours.text);
    double? wattVal = double.tryParse(wattage.text);
    setState(() {
      double? totalWatt = wattVal! * hoursVal!;
      result = totalWatt * kwHVal!;
    });
  }

  void change() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Loading()),
    );
  }

  void clear() {
    setState(() {
      result = 0;
    });
    kwh.clear();
    hours.clear();
    wattage.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(75, 57, 239, 2),
        automaticallyImplyLeading: false,
        title: Text(
          'ELECTRIC CHARGES CALCULATOR',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color.fromARGB(200, 130, 215, 235),
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.05, -0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Container(
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
                      'ENTER INFORMATION BELOW',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
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
                      child: Image.asset(
                        'assets/images/flash-logo.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                child: CustomButton(
                    "CALCULATE", calculate, Color.fromRGBO(75, 57, 239, 2)),
              ),

              CustomField("ENTER DEVICE WATTAGE", wattage),
              CustomField("ENTER NO. OF HOURS USED", hours),
              CustomField("ENTER RATE OF KWH", kwh),
              // Display the result
              Text(
                result == null
                    ? 'Please enter a valid number!'
                    : result.toStringAsFixed(2),
                style: const TextStyle(fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.all(6),
                child: CustomButton(
                    "CLEAR", change, Color.fromRGBO(75, 57, 239, 2)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
