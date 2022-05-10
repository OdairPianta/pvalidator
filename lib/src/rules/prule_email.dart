import 'package:pvalidator/src/rules/rule.dart';

class PRuleEmail implements Rule {
  String? _value;
  String message;

  PRuleEmail(this._value, {this.message = "Invalid e-mail"});

  @override
  String? validate() {
    if (this._value == null || this._value?.trim().length == 0) {
      return null;
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this._value ?? '')) {
      return this.message;
    } else {
      return null;
    }
  }
}
