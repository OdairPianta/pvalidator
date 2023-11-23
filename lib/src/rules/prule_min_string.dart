import 'package:pvalidator/src/rules/rule.dart';

class PRuleMinString implements Rule {
  final String? _value;
  final int min;
  final String message;

  /// Check if the value size greater than or equal to the min value
  /// [value] is the value to chec
  /// [min] is the minimum size of value
  /// [message] is the error message
  PRuleMinString(this._value, this.min, {this.message = "Minimum size is"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().isEmpty == true) {
      return null;
    } else if (_value!.length < min) {
      return "$message $min";
    } else {
      return null;
    }
  }
}
