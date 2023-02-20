import 'package:pvalidator/src/rules/rule.dart';

class PRuleInteger implements Rule {
  String? _value;
  String separator;
  String message;

  PRuleInteger(this._value,
      {this.separator = ".", this.message = "Invalid integer"});

  @override
  String? validate() {
    if (this._value == null || this._value?.trim().length == 0) {
      return null;
    } else if (int.tryParse(this._value ?? "") == null) {
      return this.message;
    } else {
      return null;
    }
  }
}
