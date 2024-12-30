import 'dart:async';
import 'package:ayat_application/providers/AyaProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class myTimer extends StatefulWidget {
  @override
  _myTimer createState() => _myTimer();
}

class _myTimer extends State<myTimer> {

  late Timer _timer;
  int _totalSeconds = 120; // Set your countdown time in seconds (43200 seconds = 12 hour)

  void startTimer() {

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {

      if (_totalSeconds > 0) {

        setState(() {
          _totalSeconds--;
        });

      } 
      else { // if the timer finish
        
        Provider.of<AyaProvider>(context,listen: false).updateRandomIndex(); // update the random index from Ayaprovider

        setState(() {
          _totalSeconds=120; // to restart The timer
        });
      }
    });
  }

//
  String formatTime(int seconds) {
    int hours = (seconds ~/ 3600); // In Dart, the operator (~/) is known as the integer (division operator). It divides two numbers and returns the quotient as an integer (without reminder)
    int minutes = (seconds ~/ 60) % 60;
    int secs = seconds % 60; // In Dart, the operator (%) is known as the modulus operator (or modulo operator). It returns the remainder of a division operation.

    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';  //In Dart, the method (padLeft) is used to format strings by adding characters to the left side until the string reaches a specified length. This is particularly useful for ensuring that numbers are displayed with a consistent number of digits, such as formatting hours, minutes, or seconds in a time display.
  }

  @override
  void initState() { // must be applied. if not the timer will not work
    super.initState();
    startTimer(); // Start the timer when the widget is initialized
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
         

    return Center(
        child: Column(
          children: [
            Text(
              "الوقت المتبقي لتحديث الْآيَةُ",
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 14,
                fontWeight: FontWeight.w900
              ),
            ),
            
            Text(
              formatTime(_totalSeconds),
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      
    );
  }
}

