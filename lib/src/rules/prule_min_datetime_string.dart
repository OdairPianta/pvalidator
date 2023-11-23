import 'package:pvalidator/src/rules/rule.dart';

class PRuleMinDateTimeString implements Rule {
  final String? _value;
  final DateTime min;
  final String message;

  /// Check if the value is after the minimum date
  /// [value] is the value to check
  /// [min] is the minimum date
  /// [message] is the error message
  PRuleMinDateTimeString(this._value, this.min,
      {this.message = "Minimum date is"});

  @override
  String? validate() {
    DateTime? dateTime = DateTime.tryParse(_value ?? '');

    if (_value == null || _value?.trim().isEmpty == true || dateTime == null) {
      return null;
    } else if (dateTime.compareTo(min) < 0) {
      return message + ' ' + min.toString();
    } else {
      return null;
    }
  }
}
