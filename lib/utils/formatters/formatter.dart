import 'package:intl/intl.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';

class AppFormatter {
  // Date formatter
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  // Currecy formatter
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', name: 'KZ', decimalDigits: 2)
        .format(amount);
  }

  // Phone number formatter
  static String formatPhomeNumber(String phoneNumber, String regionCode) {
    try {
      return formatNumberSync(phoneNumber);
    } catch (e) {
      // Handle parsing errors
      throw ("Error formatting phone number: $e");
    }
  }

  // Percentage formatter
  String formatPercentage(double percentage) {
    return NumberFormat.percentPattern().format(percentage);
  }

  // Duration formatter in hours
  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    return "${duration.inDays} :${twoDigits(duration.inHours)} : $twoDigitMinutes";
  }
}
