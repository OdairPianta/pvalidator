import 'package:pvalidator/src/rules/rule.dart';

class PRuleRegex implements Rule {
  final String? _value;
  final String _pattern;
  final String message;

  /// Check regex pattern
  /// [value] is the value to check
  /// [pattern] is the regex pattern
  /// [message] is the error message
  PRuleRegex(this._value, this._pattern,
      {this.message = "Invalid format value"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().length == 0) {
      return null;
    } else if (!RegExp(_pattern).hasMatch(_value ?? '')) {
      return message;
    } else {
      return null;
    }
  }
}
