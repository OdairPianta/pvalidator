import 'dart:math';

import 'package:pvalidator/src/rules/rule.dart';

class PRuleCnpj implements Rule {
  static const List<String> blackList = [
    "00000000000000",
    "11111111111111",
    "22222222222222",
    "33333333333333",
    "44444444444444",
    "55555555555555",
    "66666666666666",
    "77777777777777",
    "88888888888888",
    "99999999999999"
  ];

  final String? _value;
  final String message;

  /// Check if the value is a valid CNPJ
  /// [value] is the value to check
  /// [message] is the error message
  PRuleCnpj(this._value, {this.message = "Invalid CNPJ"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().isEmpty == true) {
      return null;
    } else if (isValid((_value))) {
      return null;
    } else {
      return message;
    }
  }

  bool isValid(String? cnpj, [stripBeforeValidation = true]) {
    if (stripBeforeValidation) {
      cnpj = strip(cnpj);
    }

    if (cnpj == null || cnpj.isEmpty) {
      return false;
    }

    if (blackList.contains(cnpj)) {
      return false;
    }

    if (cnpj.length != 14) {
      return false;
    }

    String numbers = cnpj.substring(0, 12);
    numbers += _verifierDigit(numbers).toString();
    numbers += _verifierDigit(numbers).toString();

    return numbers.substring(numbers.length - 2) ==
        cnpj.substring(cnpj.length - 2);
  }

  int _verifierDigit(String cnpj) {
    int index = 2;

    List<int> reverse =
        cnpj.split("").map((s) => int.parse(s)).toList().reversed.toList();

    int sum = 0;

    for (var number in reverse) {
      sum += number * index;
      index = (index == 9 ? 2 : index + 1);
    }

    int mod = sum % 11;

    return (mod < 2 ? 0 : 11 - mod);
  }

  String format(String cnpj) {
    RegExp regExp = RegExp(r'^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})$');

    return strip(cnpj).replaceAllMapped(
        regExp, (Match m) => "${m[1]}.${m[2]}.${m[3]}/${m[4]}-${m[5]}");
  }

  String strip(String? cnpj) {
    RegExp regex = RegExp(r'[^\d]');
    cnpj = cnpj ?? "";

    return cnpj.replaceAll(regex, "");
  }

  String generate([bool useFormat = false]) {
    String numbers = "";

    for (var i = 0; i < 12; i += 1) {
      numbers += Random().nextInt(9).toString();
    }

    numbers += _verifierDigit(numbers).toString();
    numbers += _verifierDigit(numbers).toString();

    return (useFormat ? format(numbers) : numbers);
  }
}
