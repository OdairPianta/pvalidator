import 'package:pvalidator/src/rules/rule.dart';

class PRuleRequiredIf implements Rule {
  final String? _value;
  final bool _ifRequired;
  final String message;

  /// Check if the value is present if the condition is true
  /// [value] is the value to check
  /// [ifRequired] is the condition to check
  /// [message] is the error message
  PRuleRequiredIf(this._value, this._ifRequired, {this.message = "Required"});

  @override
  String? validate() {
    if (!_ifRequired) {
      return null;
    }
    if (_value == null || _value?.trim().isEmpty == true) {
      return message;
    } else {
      return null;
    }
  }
}
