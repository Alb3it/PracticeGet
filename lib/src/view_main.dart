import 'package:flutter/material.dart';
import 'package:masterofget/style/styles.dart';
import 'package:masterofget/variables/variables.dart';
import 'package:masterofget/controllers/controllers.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(
      initialPage: 0,
    );

    //final DateSelectController dateController = DateSelectController();
    final periodController = Get.put(PeriodSelectController());

    void _onPageChanged(int page) {
      periodController.setPeriod(page);
    }

    void _onPressed(int index) {
      periodController.setPeriod(index);
      pageController.jumpToPage(index);
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ThemaColor,
      appBar: AppBar(
        backgroundColor: ThemaColor,
        elevation: 0.0,
        title: SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(TextSpan(children: [
                  TextSpan(
                      text: '안녕하세요',
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                  TextSpan(text: '\n'),
                  WidgetSpan(
                      child: SizedBox(
                    height: 25,
                  )),
                  TextSpan(
                      text: '샤브향 대전테크노점',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black)),
                  TextSpan(
                      text: '님',
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                ])),
                SizedBox(
                    child: Column(
                  children: [
                    SizedBox(height: 35),
                    ToggleButtons(
                      renderBorder: false,
                      fillColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      selectedColor: Colors.black,
                      children: [
                        GetBuilder<PeriodSelectController>(
                            builder: (periodController) {
                          return Container(
                            padding: const EdgeInsets.all(1.0),
                            decoration: periodController.periodSelected == 0
                                ? const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.black, width: 2.5)))
                                : null,
                            child: Text(
                              '일',
                              style: TextStyle(
                                  fontWeight:
                                      periodController.periodSelected == 0
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                            ),
                          );
                        }),
                        GetBuilder<PeriodSelectController>(
                            builder: (periodController) {
                          return Container(
                            padding: const EdgeInsets.all(1.0),
                            decoration: periodController.periodSelected == 1
                                ? const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.black, width: 2.5)))
                                : null,
                            child: Text(
                              '주',
                              style: TextStyle(
                                  fontWeight:
                                      periodController.periodSelected == 1
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                            ),
                          );
                        }),
                        GetBuilder<PeriodSelectController>(
                            builder: (periodController) {
                          return Container(
                            padding: const EdgeInsets.all(1.0),
                            decoration: periodController.periodSelected == 2
                                ? BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.black, width: 2.5)))
                                : null,
                            child: Text(
                              '월',
                              style: TextStyle(
                                  fontWeight:
                                      periodController.periodSelected == 2
                                          ? FontWeight.w700
                                          : FontWeight.w400),
                            ),
                          );
                        }),
                      ],
                      isSelected: periodController.periodList,
                      onPressed: _onPressed,
                      constraints: BoxConstraints(minWidth: 25),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
        toolbarHeight: 100,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: PageView(
          children: pages,
          controller: pageController,
          onPageChanged: _onPageChanged,
        ),
      ),
    );
  }
}
