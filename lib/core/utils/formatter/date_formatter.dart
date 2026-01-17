import 'package:easy_localization/easy_localization.dart';

class DateFormatter {
  const DateFormatter._();
  static final DateFormatter instance = DateFormatter._();

  String formatDateToMonthDayYear(DateTime date) =>
      DateFormat('MMM dd, yyyy').format(date);
}
