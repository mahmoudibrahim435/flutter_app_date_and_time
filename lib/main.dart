// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'dart:async';

import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: dateandtime(),
    );
  }
}

class dateandtime extends StatefulWidget {
  const dateandtime({super.key});

  @override
  State<dateandtime> createState() => _dateandtimeState();
}

class _dateandtimeState extends State<dateandtime> {
  String week = "";
  String date = "";
  String time = "";

  datechanges() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        week =( DateFormat("E").format(DateTime.now()));
        date = (DateFormat("yMMMd").format(DateTime.now()));
        time = ( DateFormat('hh:mm:ss aaa').format(DateTime.now()));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    datechanges();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 61, 102),
        centerTitle: true,
        title: Text(
          "Date and Time",
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Today's Date is $week ",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              date,
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              time,
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
