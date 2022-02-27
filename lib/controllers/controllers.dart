import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterofget/variables/variables.dart';

//To make buttons in select page, and send userinfo from login to main
class UserInfoController extends GetxController {
  int selectedCorp = 0;
  void corpSet(int c) {
    selectedCorp = c;
    update();
  }

  Map userInfo = {'status': 'cleared'};
  void userInfoSet(Map ui) {
    userInfo = ui;
    update();
  }

  void clear() {
    corpSet(-1);
    userInfoSet({'status': 'cleared'});
    update();
  }
}

class DateSelectController extends GetxController {
  DateTime selectedDate = DateTime.now().subtract(const Duration(days: 1));
  void setSelectedDate(DateTime d) {
    selectedDate = d;
    update();
  }
}

class PeriodSelectController extends GetxController {
  int periodSelected = 0;
  List<bool> periodList = [true, false, false];
  void setPeriod(int i) {
    periodSelected = i;
    for (int j = 0; j < 3; j++) {
      if (j == i)
        periodList[j] = true;
      else
        periodList[j] = false;
    }
    update();
  }
}

class WeekToggleController extends GetxController {
  bool isweekday = true;
  void weekday() {
    isweekday = true;
    update();
  }

  void weekend() {
    isweekday = false;
    update();
  }
}

class WeekBrandChartCategoryController extends GetxController {
  int category = 0;
  void setFirst() {
    category = 0;
    update();
  }

  void setSecond() {
    category = 1;
    update();
  }

  void setThird() {
    category = 2;
    update();
  }

  void setFourth() {
    category = 3;
    update();
  }
}
