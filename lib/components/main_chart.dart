import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:masterofget/style/styles.dart';
import 'package:masterofget/variables/variables.dart';
import 'package:get/get.dart';
import 'package:masterofget/controllers/controllers.dart';

class MainChart extends StatelessWidget {
  final int type;
  final int order;
  final int month;
  final int start;
  MainChart(this.type, this.order, this.month, this.start);

//to make 15.00 to 15
  String format(double n) {
    return n.truncateToDouble() == n ? n.toStringAsFixed(0) : n.toString();
  }

//All List, both Input and Output. But it seems chart calls with just one spot, and always the length of l is 1. This is maybe there is only one graph inside MainSalesGraph
//message on the tooltip
  List<LineTooltipItem> _getTooltipItems(List<LineBarSpot> l) {
    List<LineTooltipItem> result = [];
    result.add(LineTooltipItem(
        '${month}월 ${start + l[0].spotIndex}일 \n 매출액: ${format(SalesGraph[type - 1][order - 1][l[0].spotIndex].y)}만원',
        TextStyle(fontSize: 14)));
    return result;
  }

//To size down the dot on the touched spot
  List<TouchedSpotIndicatorData> _getTouchedSpotIndicator(
      LineChartBarData x, List<int> l) {
    List<TouchedSpotIndicatorData> result = [];
    result.add(
        TouchedSpotIndicatorData(FlLine(color: Colors.transparent), FlDotData(
      getDotPainter: (p0, p1, p2, p3) {
        return FlDotCirclePainter(
            color: Colors.black, radius: 2, strokeColor: Colors.black);
      },
    )));
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
      child: SizedBox(
        height: 130,
        child: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                  spots: SalesGraph[type - 1][order - 1],
                  isCurved: true,
                  colors: [Colors.black],
                  belowBarData: BarAreaData(
                      colors: [Color(0x11777777), ThemaColor],
                      show: true,
                      gradientFrom: Offset(0, -1),
                      gradientTo: Offset(0, 1)),
                  dotData: FlDotData(
                    show: false,
                  )),
            ],
            lineTouchData: LineTouchData(
              getTouchLineEnd: ((barData, spotIndex) {
                return 0;
              }),
              touchSpotThreshold: 30,
              getTouchedSpotIndicator: _getTouchedSpotIndicator,
              touchTooltipData: LineTouchTooltipData(
                tooltipBgColor: Colors.white,
                tooltipPadding: EdgeInsets.all(8),
                getTooltipItems: _getTooltipItems,
              ),
            ),
            borderData: FlBorderData(show: false),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(show: false),
          ),
          swapAnimationCurve: Curves.linear,
          swapAnimationDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
