import 'package:flutter/material.dart';
import 'package:masterofget/main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:masterofget/components/main_circle_indicator_box.dart';

class MainCircularIndicator extends StatelessWidget {
  final double percent1, percent2;
  final String title1, title2;
  MainCircularIndicator(this.percent1, this.percent2, this.title1, this.title2);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainCircleIndicatorBox(percent1, title1),
            MainCircleIndicatorBox(percent2, title2),
          ],
        ));
  }
}
