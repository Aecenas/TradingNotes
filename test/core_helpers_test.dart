import 'package:flutter_test/flutter_test.dart';
import 'package:trading_notes/core/enums.dart';
import 'package:trading_notes/core/formatters.dart';
import 'package:trading_notes/presentation/widgets/tag_input_helper.dart';

void main() {
  test('parseTagsInput splits, trims, and de-duplicates', () {
    final result = parseTagsInput('BTC, 趋势跟随, BTC,  , 高把握');
    expect(result, containsAll(<String>['BTC', '趋势跟随', '高把握']));
    expect(result.length, 3);
  });

  test('parseEnum returns fallback when unknown', () {
    final parsed = parseEnum(MarketType.values, 'non-exist', MarketType.other);
    expect(parsed, MarketType.other);
  });

  test('parseNullableDouble handles empty string', () {
    expect(parseNullableDouble('  '), isNull);
    expect(parseNullableDouble('10.5'), 10.5);
  });
}
