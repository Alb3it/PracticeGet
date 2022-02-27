import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masterofget/src/view_detail.dart';
import 'package:masterofget/src/view_main.dart';
import 'package:masterofget/src/view_main_day.dart';
import 'package:masterofget/src/view_main_week.dart';
import 'package:masterofget/src/view_main_month.dart';
import 'package:fl_chart/fl_chart.dart';

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

//views_main_detail
final Widget iconDown = SvgPicture.asset('icons/angledown1.svg');
final Widget iconRabbit = SvgPicture.asset('icons/rabbit.svg');
final Widget iconCoin = SvgPicture.asset('icons/coin.svg');
final Widget iconCustom = SvgPicture.asset('icons/custom.svg');
final Widget iconCard = SvgPicture.asset('icons/card.svg');
final Widget iconRabbitR = SvgPicture.asset('icons/rabbitR.svg');
final Widget iconSearch = SvgPicture.asset('icons/search.svg');
final Widget iconWrite = SvgPicture.asset('icons/write.svg');
final Widget iconViewRank = SvgPicture.asset('icons/viewrank.svg');
final Widget iconPlaceRank = SvgPicture.asset('icons/placerank.svg');
final Widget iconBrandRank = SvgPicture.asset('icons/brandrank.svg');
final Widget iconSearchSection = SvgPicture.asset('icons/search_section.svg');
final Widget iconSearchCategory = SvgPicture.asset('icons/search_category.svg');
final Widget iconRightAngle = SvgPicture.asset('icons/rightAngle.svg');
final Widget mainWeekBigTile1 =
    SvgPicture.asset('icons/main_week_big_tile1.svg');
final Widget mainWeekBigTile2 =
    SvgPicture.asset('icons/main_week_big_tile2.svg');
final Widget mainWeekBigTile3 =
    SvgPicture.asset('icons/main_week_big_tile3.svg');
final Widget mainWeekBigTile4 =
    SvgPicture.asset('icons/main_week_big_tile4.svg');
final Widget mainWeekBigTile5 =
    SvgPicture.asset('icons/main_week_big_tile5.svg');
final Widget mainWeekBigTile6 =
    SvgPicture.asset('icons/main_week_big_tile6.svg');

List<String> mainSales = ['1,563,400원', '8,301,400원', '28,301,400원'];
List<String> mainSalesIncrement = ['+32,000', '-982,000', '+4,982,000'];

List<List<String>> mainSmallTitle = [
  ['주요 매출 지표', '주요 브랜드 지표', '주요 상권·업종 지표', '지표 종합 평가'],
  ['주요 매출 지표', '주요 브랜드 지표', '주요 상권·업종 지표', '지표 종합 평가'],
  ['주요 매출 지표', '주요 브랜드 지표', '주요 상권·업종 지표', '지표 종합 평가']
];
List<List<String>> mainRabbitBubble = [
  ['주형진이상현최석우김상훈', '이제 내 브랜드 마케팅을 점검해볼까요?', 'ㄹㅇㅋㅋ', '멘트 뭐로 하지'],
  ['주간 매출 멘트', '이제 내 브랜드 마케팅을 점검해볼까요?', 'ㄹㅇㅋㅋ', '멘트 뭐로 하지'],
  ['주간 매출 멘트', '이제 내 브랜드 마케팅을 점검해볼까요?', 'ㄹㅇㅋㅋ', '멘트 뭐로 하지']
];
List<List<String>> mainBarIndex = [
  ['점심', '저녁'],
  ['평일', '주말'],
  ['평일', '주말']
];
List<double> mainBarPercent = [0.58, 0.83, 0.83];
List<String> mainBarPercentSt = ['59%', '83%', '83%'];

List<List<List<Widget>>> mainSmallTileIcon = [
  [
    [iconCoin, iconCard, iconCustom],
    [iconViewRank, iconPlaceRank, iconBrandRank]
  ]
];
List<List<List<String>>> mainSmallTileTitle = [
  [
    ['결제단가', '결제건수', '재방문자 매출'],
    ['View 순위', 'Place 순위', '브랜드 순위']
  ]
];
List<List<List<String>>> mainSmallTileValue = [
  [
    ['24,000월', '139건', '13%'],
    ['4.2위', '12.9위', '35,278위']
  ]
];
List<List<List<Widget>>> mainBigTileIcon = [
  [
    [iconSearch, iconWrite],
    [iconSearchSection, iconSearchCategory]
  ],
  [
    [mainWeekBigTile1, mainWeekBigTile2],
    [mainWeekBigTile1, mainWeekBigTile2],
    [mainWeekBigTile3, mainWeekBigTile4],
    [mainWeekBigTile5, mainWeekBigTile6]
  ]
];
List<List<List<String>>> mainBigTileTitle = [
  [
    ['13,254건', '52건'],
    ['13,254건', '52건']
  ],
  [
    ['973,000원', '34,000원'],
    ['120,120원', '72,300원'],
    ['143,254건', '423건'],
    ['113,254건', '29,435건']
  ]
];
List<List<List<String>>> mainBigTileSubTitle = [
  [
    ['브랜드 검색량', '브랜드 컨텐츠 발행량'],
    ['상권 검색량', '업종 검색량']
  ],
  [
    ['평균 매출액', '평균 결제단가'],
    ['평균 매출액', '평균 결제단가'],
    ['브랜드 검색량', '브랜드 컨텐츠 발행량'],
    ['상권 검색량', '업종 검색량']
  ]
];
List<List<String>> mainLastTile = [
  [
    '내 가게에서 점심을 해결하는 직장인이 늘었어요',
    '단골들이 늘어나기 시작했어요',
    '내 가게가 검색결과 상위에 노출되기 시작했어요',
    '내 상권에 대한 관심이 떨어지고 있어요',
    '단가가 높은 메뉴의 선호도가 떨어지고 있어요'
  ],
  [
    '내 가게에서 점심을 해결하는 직장인이 늘었어요',
    '단골들이 늘어나기 시작했어요',
    '내 가게가 검색결과 상위에 노출되기 시작했어요',
    '내 상권에 대한 관심이 떨어지고 있어요',
    '단가가 높은 메뉴의 선호도가 떨어지고 있어요'
  ],
  [
    '내 가게에서 점심을 해결하는 직장인이 늘었어요',
    '단골들이 늘어나기 시작했어요',
    '내 가게가 검색결과 상위에 노출되기 시작했어요',
    '내 상권에 대한 관심이 떨어지고 있어요',
    '단가가 높은 메뉴의 선호도가 떨어지고 있어요'
  ]
];

List<List<List<FlSpot>>> SalesGraph = [
  [
    [
      FlSpot(1, 30),
      FlSpot(2, 50),
      FlSpot(3, 60),
      FlSpot(4, 100),
      FlSpot(5, 120),
      FlSpot(6, 70),
      FlSpot(7, 100)
    ],
    [
      FlSpot(1, 20),
      FlSpot(2, 40),
      FlSpot(3, 70),
      FlSpot(4, 130),
      FlSpot(5, 90),
      FlSpot(6, 20),
      FlSpot(7, 120)
    ],
    [
      FlSpot(1, 40),
      FlSpot(2, 60),
      FlSpot(3, 50),
      FlSpot(4, 90),
      FlSpot(5, 130),
      FlSpot(6, 110),
      FlSpot(7, 10)
    ],
    [
      FlSpot(1, 50),
      FlSpot(2, 90),
      FlSpot(3, 50),
      FlSpot(4, 80),
      FlSpot(5, 90),
      FlSpot(6, 100),
      FlSpot(7, 140)
    ],
  ],
  [
    [
      FlSpot(1, 60),
      FlSpot(2, 40),
      FlSpot(3, 30),
      FlSpot(4, 80),
      FlSpot(5, 150),
    ],
    [
      FlSpot(1, 20),
      FlSpot(2, 40),
      FlSpot(3, 70),
      FlSpot(4, 30),
      FlSpot(5, 90),
    ]
  ],
];

List<List<FlSpot>> WeekBrandGraph = [
  [
    FlSpot(1, 20),
    FlSpot(2, 34),
    FlSpot(3, 57),
    FlSpot(4, 79),
    FlSpot(5, 34),
    FlSpot(6, 45),
    FlSpot(7, 50)
  ],
  [
    FlSpot(1, -17),
    FlSpot(2, -15),
    FlSpot(3, -16),
    FlSpot(4, -21),
    FlSpot(5, -12),
    FlSpot(6, -11),
    FlSpot(7, -9)
  ],
  [
    FlSpot(1, -30),
    FlSpot(2, -27),
    FlSpot(3, -28),
    FlSpot(4, -26),
    FlSpot(5, -25),
    FlSpot(6, -21),
    FlSpot(7, -13)
  ],
  [
    FlSpot(1, -19),
    FlSpot(2, -19),
    FlSpot(3, -18),
    FlSpot(4, -19),
    FlSpot(5, -17),
    FlSpot(6, -16),
    FlSpot(7, -12)
  ]
];
