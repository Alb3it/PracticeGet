import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MainCircleIndicatorBox extends StatelessWidget {
  final String title;
  final double percent;
  MainCircleIndicatorBox(this.percent, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 40,
              offset: const Offset(0, 20)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CircularPercentIndicator(
              radius: 60,
              lineWidth: 13,
              percent: percent,
              animation: true,
              animationDuration: 1200,
              backgroundColor: Color(0xfff2f1f2),
              center: Text(
                '${(percent * 100).toStringAsFixed(0)}%',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              progressColor: Color(0xff3c3c3c),
              circularStrokeCap: CircularStrokeCap.round,
              startAngle: 180,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              title,
              style: TextStyle(color: Color(0xffaaaaaa)),
            ),
          )
        ],
      ),
    );
  }
}
