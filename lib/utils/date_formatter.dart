import 'package:intl/intl.dart';

class DateFormatter {
  static String format(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String formatTime(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }

  static String formatDateTime(DateTime date) {
    return DateFormat('dd/MM/yyyy hh:mm a').format(date);
  }

  static String getDay(DateTime date) {
    return DateFormat('EEEE').format(date);
  }

  static String getMonth(DateTime date) {
    return DateFormat('MMMM').format(date);
  }

  static String getYear(DateTime date) {
    return DateFormat('yyyy').format(date);
  }
}