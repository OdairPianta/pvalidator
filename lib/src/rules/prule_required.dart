import 'package:pvalidator/src/rules/rule.dart';

class PRuleRequired implements Rule {
  final String? _value;
  final String message;

  /// Check if the value is present
  /// [value] is the value to check
  /// [message] is the error message
  PRuleRequired(this._value, {this.message = "Required"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().length == 0) {
      return message;
    } else {
      return null;
    }
  }
}
