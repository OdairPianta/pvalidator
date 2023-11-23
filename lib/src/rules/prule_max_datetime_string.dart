import 'package:pvalidator/src/rules/rule.dart';

class PRuleMaxDateTimeString implements Rule {
  final String? _value;
  final DateTime max;
  final String message;

  /// Check if the value is before the maximum date
  /// [value] is the value to check
  /// [max] is the maximum date
  /// [message] is the error message
  PRuleMaxDateTimeString(this._value, this.max,
      {this.message = "Maximum date is"});

  @override
  String? validate() {
    DateTime? dateTime = DateTime.tryParse(_value ?? '');

    if (_value == null || _value?.trim().isEmpty == true || dateTime == null) {
      return null;
    } else if (dateTime.compareTo(max) > 0) {
      return message + ' ' + max.toString();
    } else {
      return null;
    }
  }
}
