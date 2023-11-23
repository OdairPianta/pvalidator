import 'package:pvalidator/src/rules/rule.dart';

class PRuleEmail implements Rule {
  final String? _value;
  final String message;

  /// Check if the value is a valid e-mail
  /// [value] is the value to check
  /// [message] is the error message
  PRuleEmail(this._value, {this.message = "Invalid e-mail"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().isEmpty == true) {
      return null;
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_value ?? '')) {
      return message;
    } else {
      return null;
    }
  }
}
