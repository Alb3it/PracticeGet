import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../variables/variables.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:get/get.dart';
import 'package:masterofget/controllers/controllers.dart';
import 'package:masterofget/function/Day2Week.dart';

class MainSalesInfo extends StatefulWidget {
  final int type;
  MainSalesInfo(this.type);

  @override
  State<MainSalesInfo> createState() => _MainSalesInfoState(type);
}

class _MainSalesInfoState extends State<MainSalesInfo> {
  final int type;
  _MainSalesInfoState(this.type);

  final Widget iconDown = SvgPicture.asset('icons/angledown1.svg');

  final DateRangePickerController _controller = DateRangePickerController();

  final DateController = Get.put(DateSelectController());

  @override
  void selectDate(DateRangePickerSelectionChangedArgs date) {
    _controller.selectedDate = date.value;
    DateController.setSelectedDate(date.value);
    Navigator.pop(context);
  }

  void pickDate() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext) {
          return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                color: Color(0xffe5e5e5),
              ),
              height: 370,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 20, right: 20, top: 20),
                      child: SfDateRangePicker(
                        view: DateRangePickerView.month,
                        selectionMode: DateRangePickerSelectionMode.single,
                        onSelectionChanged: selectDate,
                        controller: _controller,
                        backgroundColor: const Color(0xffe5e5e5),
                        monthCellStyle: const DateRangePickerMonthCellStyle(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            todayTextStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            disabledDatesTextStyle:
                                TextStyle(color: Color(0x55000000))),
                        headerHeight: 70,
                        headerStyle: const DateRangePickerHeaderStyle(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Colors.black),
                            backgroundColor: Color(0xffe5e5e5)),
                        selectionColor: Colors.black.withOpacity(0.5),
                        selectionTextStyle: TextStyle(color: Colors.white),
                        todayHighlightColor: Colors.black,
                        maxDate: DateTime.now(),
                        yearCellStyle: const DateRangePickerYearCellStyle(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          todayTextStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        initialSelectedDate: DateController.selectedDate,
                      ))
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SizedBox(
                child: OutlinedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GetBuilder<DateSelectController>(builder: (_) {
                    if (type == 0) {
                      return Text(
                          '${_.selectedDate.year}년 ${_.selectedDate.month}월 ${_.selectedDate.day}일');
                    } else if (type == 1) {
                      return Text(
                          '${_.selectedDate.year}년 ${_.selectedDate.month}월 ${day2Week(_.selectedDate)}주차');
                    } else {
                      return Text(
                          '${_.selectedDate.year}년 ${_.selectedDate.month}월');
                    }
                  }),
                  iconDown
                ],
              ),
              onPressed: pickDate,
              // ignore: prefer_const_constructors
              style: ButtonStyle(
                side: MaterialStateProperty.all(BorderSide.none),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                fixedSize: MaterialStateProperty.all(const Size.fromWidth(170)),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
            )),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                mainSales[widget.type],
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                mainSalesIncrement[widget.type],
                style: const TextStyle(
                  color: Color(0xffaaaaaa),
                  fontWeight: FontWeight.w500,
                ),
              )),
        ],
      ),
    );
  }
}
