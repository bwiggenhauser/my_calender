String dateToString(DateTime date) {
  int year = date.year;
  int month = date.month;
  int day = date.day;
  return '$day.$month.$year';
}

String intToString(int number) {
  String asString = number.toString();
  int year = int.parse(asString[0] + asString[1] + asString[2] + asString[3]);
  int month = int.parse(asString[4] + asString[5]);
  int day = int.parse(asString[6] + asString[7]);
  return '$day.$month.$year';
}

int stringToInt(String str) {
  String day = str[0] + str[1];
  String month = str[3] + str[4];
  String year = str[6] + str[7] + str[8] + str[9];
  return int.parse(year + month + day);
}
