import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterofget/controllers/controllers.dart';
import 'package:masterofget/style/styles.dart';

class MainBrandToggle extends StatelessWidget {
  MainBrandToggle({Key? key}) : super(key: key);

  final CatController = Get.put(WeekBrandChartCategoryController());

  void onFirstPressed() {
    CatController.setFirst();
  }

  void onSecondPressed() {
    CatController.setSecond();
  }

  void onThirdPressed() {
    CatController.setThird();
  }

  void onFourthPressed() {
    CatController.setFourth();
  }

  double setPosition() {
    int i = CatController.category;
    if (i == 0)
      return 0;
    else if (i == 1)
      return 84;
    else if (i == 2)
      return 177;
    else
      return 265;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
      child: Container(
          height: 35,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 40,
                offset: const Offset(0, 20)),
          ], color: ThemaColor, borderRadius: BorderRadius.circular(20)),
          child: GetBuilder<WeekBrandChartCategoryController>(
            builder: (_) {
              return Stack(
                children: [
                  AnimatedPositioned(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.easeIn,
                      left: setPosition(),
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Container(
                          width: 80,
                          height: 29,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: TextButton(
                          child: Text(
                            '검색량',
                            style: TextStyle(
                                fontWeight: _.category == 0
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                                color: Colors.black),
                          ),
                          onPressed: onFirstPressed,
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: TextButton(
                          child: Text(
                            'View 순위',
                            style: TextStyle(
                                fontWeight: _.category == 1
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                                color: Colors.black),
                          ),
                          onPressed: onSecondPressed,
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: TextButton(
                          child: Text(
                            'Place 순위',
                            style: TextStyle(
                                fontWeight: _.category == 2
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                                color: Colors.black),
                          ),
                          onPressed: onThirdPressed,
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: TextButton(
                          child: Text(
                            '랭킹',
                            style: TextStyle(
                                fontWeight: _.category == 3
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                                color: Colors.black),
                          ),
                          onPressed: onFourthPressed,
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
