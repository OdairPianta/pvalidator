import 'package:pvalidator/src/rules/rule.dart';

class PRuleRequired implements Rule {
  String? _value;
  String message;

  PRuleRequired(this._value, {this.message = "Required"});

  @override
  String? validate() {
    if (this._value == null || this._value?.trim().length == 0) {
      return this.message;
    } else {
      return null;
    }
  }
}
