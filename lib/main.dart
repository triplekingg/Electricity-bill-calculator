// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';
import 'loadingscreen.dart';
import 'inputfield.dart';
import 'custombutton.dart';
import 'info.dart';
import 'imageWidget.dart';

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
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Loading(result)),
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
                  child: Info("ENTER INFORMATION BELOW"),
                ),
              ),
              ImgWidget("assets/images/flash-logo.png"),
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
                    "CLEAR", clear, Color.fromRGBO(75, 57, 239, 2)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
