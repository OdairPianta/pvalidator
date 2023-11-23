import 'package:pvalidator/src/rules/rule.dart';

class PRuleMaxNumeric implements Rule {
  final String? _value;
  final double max;
  final String message;

  /// Check if the value less than or equal to the max value
  /// [value] is the value to check
  /// [max] is the maximum value
  /// [message] is the error message
  PRuleMaxNumeric(this._value, this.max, {this.message = "Maximum value is"});

  @override
  String? validate() {
    double? doubleValue = double.tryParse(_value ?? '');
    if (_value == null || _value?.trim().length == 0 || doubleValue == null) {
      return null;
    } else if (doubleValue > max) {
      return "$message ${max.toString()}";
    } else {
      return null;
    }
  }
}
