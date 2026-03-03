import 'package:intl/intl.dart';

String formatDateTime(DateTime? value) {
  if (value == null) {
    return '-';
  }
  final local = value.toLocal();
  return DateFormat('yyyy-MM-dd HH:mm').format(local);
}

String formatNumber(num? value, {int fractionDigits = 2}) {
  if (value == null) {
    return '-';
  }
  return value.toStringAsFixed(fractionDigits);
}

DateTime nowUtc() => DateTime.now().toUtc();

double? parseNullableDouble(String input) {
  final text = input.trim();
  if (text.isEmpty) {
    return null;
  }
  return double.tryParse(text);
}

int? parseNullableInt(String input) {
  final text = input.trim();
  if (text.isEmpty) {
    return null;
  }
  return int.tryParse(text);
}
