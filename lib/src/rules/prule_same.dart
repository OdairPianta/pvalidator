import 'package:pvalidator/src/rules/rule.dart';

class PRuleSame implements Rule {
  final String? _value;
  final String? _compare;
  final String message;

  /// Check if the value is equal to the compare value
  /// [value] is the value to check
  /// [compare] is the value to compare
  /// [message] is the error message
  PRuleSame(this._value, this._compare,
      {this.message = "Value must be equal to"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().length == 0) {
      return null;
    } else if (_value != _compare) {
      return message;
    } else {
      return null;
    }
  }
}
