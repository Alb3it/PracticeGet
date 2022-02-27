import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterofget/components/main_components.dart';
import 'package:masterofget/controllers/controllers.dart';
import 'package:masterofget/function/Day2Week.dart';

class ViewMainWeek extends StatelessWidget {
  ViewMainWeek({Key? key}) : super(key: key);
  final weekdayController = Get.put(WeekToggleController());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          MainSalesInfo(1),
          GetBuilder<DateSelectController>(builder: (_) {
            return MainChart(1, day2Week(_.selectedDate), _.selectedDate.month,
                _.selectedDate.day - _.selectedDate.weekday + 1);
          }),
          MainSmallTitle(1, 0),
          MainBarRabbitLeft(1, 0),
          MainWeekToggle(),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: GetBuilder<WeekToggleController>(builder: (_) {
              if (_.isweekday == true) {
                return MainBigTile(1, 0);
              } else
                return MainBigTile(1, 1);
            }),
          ),
          GetBuilder<WeekToggleController>(builder: (_) {
            if (_.isweekday == true) {
              return MainCircularIndicator(
                  0.83, 0.42, '점심 매출 비율', '재방문자 매출 비율');
            } else
              return MainCircularIndicator(
                  0.53, 0.32, '점심 매출 비율', '재방문자 매출 비율');
          })
        ],
      ),
    ));
  }
}
