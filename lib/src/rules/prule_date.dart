import 'package:pvalidator/src/rules/rule.dart';

class PRuleDateTime implements Rule {
  final String? _value;
  final String message;

  /// Check if the value is a valid date
  /// [value] is the value to check
  /// [message] is the error message
  PRuleDateTime(this._value, {this.message = "Invalid date"});

  @override
  String? validate() {
    DateTime? dateTime = DateTime.tryParse(_value ?? '');

    if (_value == null || _value?.trim().isEmpty == true) {
      return null;
    } else if (dateTime == null) {
      return message;
    } else {
      return null;
    }
  }
}
