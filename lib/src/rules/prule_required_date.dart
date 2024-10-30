import 'package:pvalidator/src/rules/rule.dart';

class PRuleRequiredDate implements Rule {
  final DateTime? _value;
  final String message;

  /// Check if the value is present
  /// [value] is the value to check
  /// [message] is the error message
  PRuleRequiredDate(this._value, {this.message = "Required"});

  @override
  String? validate() {
    if (_value == null || _value == DateTime(0)) {
      return message;
    } else {
      return null;
    }
  }
}
