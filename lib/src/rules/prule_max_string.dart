import 'package:pvalidator/src/rules/rule.dart';

class PRuleMaxString implements Rule {
  final String? _value;
  final int max;
  final String message;

  /// Check if the value size less than or equal to the max value
  /// [value] is the value to check
  /// [max] is the maximum size of value
  /// [message] is the error message
  PRuleMaxString(this._value, this.max, {this.message = "Maximum size is"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().isEmpty == true) {
      return null;
    } else if (_value!.length > max) {
      return "$message ${max.toString()}";
    } else {
      return null;
    }
  }
}
