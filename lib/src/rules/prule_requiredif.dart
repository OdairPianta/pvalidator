import 'package:pvalidator/src/rules/rule.dart';

class PRuleRequiredIf implements Rule {
  String? _value;
  bool _ifRequired;
  String message;

  PRuleRequiredIf(this._value, this._ifRequired, {this.message = "Required"});

  @override
  String? validate() {
    if (!this._ifRequired) {
      return null;
    }
    if (this._value == null || this._value?.trim().length == 0) {
      return this.message;
    } else {
      return null;
    }
  }
}
