import 'package:pvalidator/src/rules/rule.dart';

class PRuleMinNumeric implements Rule {
  final String? _value;
  final double min;
  final String message;

  /// Check if the value is greater than or equal to the min value
  /// [value] is the value to check
  /// [min] is the minimum value
  /// [message] is the error message
  PRuleMinNumeric(this._value, this.min, {this.message = "Minimum is"});

  @override
  String? validate() {
    double? doubleValue = double.tryParse(_value ?? '');
    if (_value == null || _value?.trim().length == 0 || doubleValue == null) {
      return null;
    } else if (doubleValue < min) {
      return "$message ${min}";
    } else {
      return null;
    }
  }
}
