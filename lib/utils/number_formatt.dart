import 'package:intl/intl.dart';

String formatToCurrency(num? value) {
  return NumberFormat.currency().format(value?.roundToDouble());
}

