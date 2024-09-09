// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'dart:async';

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
  String year = "";
  String month = "";
  String day = "";
  String weekday = "";

  String seconds = "";
  String minutes = "";
  int hours = 0;

  datechanges() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        year = DateTime.now().year.toString();
        day = DateTime.now().day.toString();
        month = DateTime.now().month.toString();
        weekday = DateTime.now().weekday.toString();
        switch (month) {
          case "1":
            month = "Jan";
            break;

          case "2":
            month = "Feb";
            break;

          case "3":
            month = "Mar";
            break;

          case "4":
            month = "Apr";
            break;

          case "5":
            month = "may";
            break;

          case "6":
            month = "Jun";
            break;

          case "7":
            month = "Jun";
            break;

          case "8":
            month = "Jul";
            break;

          case "9":
            month = "Aug";
            break;

          case "10":
            month = "Oct";
            break;

          case "11":
            month = "Nov";
            break;

          case "12":
            month = "Dec";
            break;
        }

        switch (weekday) {
          case "1":
            weekday = "Saturday";
            break;

          case "2":
            weekday = "Sunday";
            break;

          case "3":
            weekday = "Monday";
            break;

          case "4":
            weekday = "Tuseday";
            break;

          case "5":
            weekday = "Wednsday";
            break;

          case "6":
            weekday = "Thursday";
            break;

          case "7":
            weekday = "Friday";
            break;
        }
      });
    });
  }

  timechanges() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        hours = DateTime.now().hour;
        if (hours > 12) {
          hours = hours - 12;
        }
        minutes = DateTime.now().minute.toString();
        seconds = DateTime.now().second.toString();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    datechanges();
    timechanges();
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
              "Today's Date is $weekday",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$month/${day.padLeft(2, "0")}/$year",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${hours.toString().padLeft(2, "0")}:${minutes.padLeft(2, "0")}:${seconds.padLeft(2, "0")}",
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
