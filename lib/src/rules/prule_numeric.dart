import 'package:pvalidator/src/rules/rule.dart';

class PRuleNumeric implements Rule {
  String? _value;
  String separator;
  String message;

  PRuleNumeric(this._value,
      {this.separator = ".", this.message = "Invalid number"});

  @override
  String? validate() {
    if (this._value == null || this._value?.trim().length == 0) {
      return null;
    } else if (!RegExp(r"^[0-9]+\" + this.separator + r"*[0-9]*$")
        .hasMatch(this._value ?? '')) {
      return this.message;
    } else {
      return null;
    }
  }
}
