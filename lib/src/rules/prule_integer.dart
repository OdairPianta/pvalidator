import 'package:pvalidator/src/rules/rule.dart';

class PRuleInteger implements Rule {
  final String? _value;
  final String separator;
  final String message;

  /// Check if the value is a valid integer
  /// [value] is the value to check
  /// [separator] is the separator for the decimal
  /// [message] is the error message
  PRuleInteger(this._value,
      {this.separator = ".", this.message = "Invalid integer"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().isEmpty == true) {
      return null;
    } else if (int.tryParse(_value ?? "") == null) {
      return message;
    } else {
      return null;
    }
  }
}
