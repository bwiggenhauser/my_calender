String toFinalString(DateTime date) {
  int year = date.year;
  int month = date.month;
  int day = date.day;
  return '$day.$month.$year';
}
