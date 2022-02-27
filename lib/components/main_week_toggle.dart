import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterofget/controllers/controllers.dart';
import 'package:masterofget/style/styles.dart';

class MainWeekToggle extends StatelessWidget {
  MainWeekToggle({Key? key}) : super(key: key);

  final toggleController = Get.put(WeekToggleController());

  void onWeekdayPressed() {
    toggleController.weekday();
  }

  void onWeekendPressed() {
    toggleController.weekend();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 110, right: 110, top: 40),
      child: Container(
          height: 35,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 40,
                offset: const Offset(0, 20)),
          ], color: ThemaColor, borderRadius: BorderRadius.circular(20)),
          child: GetBuilder<WeekToggleController>(
            builder: (_) {
              return Stack(
                children: [
                  AnimatedPositioned(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.easeIn,
                      left: _.isweekday ? 0 : 96,
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Container(
                          width: 90,
                          height: 29,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: TextButton(
                          child: Text(
                            '평일',
                            style: TextStyle(
                                fontWeight: _.isweekday
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                                color: Colors.black),
                          ),
                          onPressed: onWeekdayPressed,
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: TextButton(
                          child: Text(
                            '주말',
                            style: TextStyle(
                                fontWeight: _.isweekday
                                    ? FontWeight.w400
                                    : FontWeight.bold,
                                color: Colors.black),
                          ),
                          onPressed: onWeekendPressed,
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          )),
    );
  }
}
