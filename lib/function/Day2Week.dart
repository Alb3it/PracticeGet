int day2Week(DateTime T) {
  String date = DateTime.now().toString();
  String firstDay = date.substring(0, 8) + '01' + date.substring(10);
  int weekDay = DateTime.parse(firstDay).weekday;
  DateTime testDate = T;
  int weekOfMonth;
  weekDay--;
  weekOfMonth = ((testDate.day + weekDay) / 7).ceil();
  return weekOfMonth;
}
