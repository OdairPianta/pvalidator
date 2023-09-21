import 'package:pvalidator/src/rules/rule.dart';

class PRuleSame implements Rule {
  String? _value;
  String? _compare;
  String message;

  PRuleSame(this._value, this._compare,
      {this.message = "Value must be equal to"});

  @override
  String? validate() {
    if (this._value == null || this._value?.trim().length == 0) {
      return null;
    } else if (this._value != this._compare) {
      return "${this.message}";
    } else {
      return null;
    }
  }
}
