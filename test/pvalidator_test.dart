import 'package:flutter_test/flutter_test.dart';

import 'package:pvalidator/pvalidator.dart';

void main() {
  test('rule accept values return error message', () {
    String? result = PValidator([
      PRuleAcceptValues("C", ['A', 'B']),
    ]).val();

    expect(result, isNotNull);
  });

  test('rule date time return error message', () {
    String? result = PValidator([
      PRuleDateTime("not is date time value"),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule email return error message', () {
    String? result = PValidator([
      PRuleEmail("not is email value"),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule max numeric return error message', () {
    String? result = PValidator([
      PRuleMaxNumeric("100", 50),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule max string return error message', () {
    String? result = PValidator([
      PRuleMaxString("this string have a lot of characters", 5),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule min numeric return error message', () {
    String? result = PValidator([
      PRuleMinNumeric("100", 200),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule mins tring return error message', () {
    String? result = PValidator([
      PRuleMinString("123", 5),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule numeric return error message', () {
    String? result = PValidator([
      PRuleNumeric("not is numeric value"),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule regex return error message', () {
    String? result = PValidator([
      PRuleRegex("123", r"^[a-z]+"),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule required return error message', () {
    String? result = PValidator([
      PRuleRequired(""),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule required if return error message', () {
    String? result = PValidator([
      PRuleRequiredIf("", true),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule same return error message', () {
    String? result = PValidator([
      PRuleSame("67890", "12345"),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule size string return error message', () {
    String? result = PValidator([
      PRuleSizeString("123456", 5),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule min date time string return error message', () {
    String? result = PValidator([
      PRuleMinDateTimeString("2019-01-01", DateTime.parse("2020-01-01")),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule max date times tring return error message', () {
    String? result = PValidator([
      PRuleMaxDateTimeString("2001-01-01", DateTime.parse("2000-01-01")),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule integer return error message', () {
    String? result = PValidator([
      PRuleInteger("this is not integer value"),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule cpf return error message', () {
    String? result = PValidator([
      PRuleCpf("this is not cpf value"),
    ]).val();
    expect(result, isNotNull);
  });
  test('rule cnpj return error message', () {
    String? result = PValidator([
      PRuleCnpj("this is not cnpj value"),
    ]).val();
    expect(result, isNotNull);
  });
}
