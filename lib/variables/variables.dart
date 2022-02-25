import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masterofget/src/view_detail.dart';
import 'package:masterofget/src/view_main.dart';
import 'package:masterofget/src/view_main_day.dart';
import 'package:masterofget/src/view_main_week.dart';
import 'package:masterofget/src/view_main_month.dart';

//Icon imports
final Widget iconFirst1 = SvgPicture.asset(
  'icons/_first1.svg',
);
final Widget iconSecond1 = SvgPicture.asset(
  'icons/_second1.svg',
);
final Widget iconThird1 = SvgPicture.asset(
  'icons/_third1.svg',
);
final Widget iconFourth1 = SvgPicture.asset(
  'icons/_fourth1.svg',
);
final Widget iconFifth1 = SvgPicture.asset(
  'icons/_fifth1.svg',
);
final Widget iconFirst2 = SvgPicture.asset('icons/_first2.svg');
final Widget iconSecond2 = SvgPicture.asset('icons/_second2.svg');
final Widget iconThird2 = SvgPicture.asset('icons/_third2.svg');
final Widget iconFourth2 = SvgPicture.asset('icons/_fourth2.svg');
final Widget iconFifth2 = SvgPicture.asset('icons/_fifth2.svg');

//Urls
const String loginUrl = 'https://test.divo.kr/auth/login/';
const String sendMUrl = 'https://test.divo.kr/auth/register/message/';
const String signUpUrl = 'https://test.divo.kr/auth/register/telephone/';

//views
final List<Widget> Views = [
  MainView(),
  DetailView(),
  DetailView(),
  DetailView(),
  DetailView()
];

//views_main
final List<Widget> pages = [
  ViewMainDay(),
  ViewMainWeek(),
  ViewMainMonth(),
];
