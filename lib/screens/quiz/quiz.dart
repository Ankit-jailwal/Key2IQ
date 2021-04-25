import 'package:flutter/material.dart';
import 'package:key2iqround1/screens/quiz/components/body.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class quiz extends StatefulWidget {
  static String routeName = "/dashBoard";

  @override
  _quizState createState() => _quizState();
}

class _quizState extends State<quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  LinearPercentIndicator(
          animation: true,
          lineHeight: 20.0,
          animationDuration: 2000,
          percent: 0.1,
          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: Colors.yellow,
        ),
        elevation: 6,
      ),
      body: Body(),
    );
  }
}
