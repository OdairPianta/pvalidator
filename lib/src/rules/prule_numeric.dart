import 'package:pvalidator/src/rules/rule.dart';

class PRuleNumeric implements Rule {
  final String? _value;
  final String separator;
  final String message;

  /// Check if the value is a valid number
  /// [value] is the value to check
  /// [separator] is the separator for the decimal
  /// [message] is the error message
  PRuleNumeric(this._value,
      {this.separator = ".", this.message = "Invalid number"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().length == 0) {
      return null;
    } else if (!RegExp(r"^[0-9]+\" + separator + r"*[0-9]*$")
        .hasMatch(_value ?? '')) {
      return message;
    } else {
      return null;
    }
  }
}
