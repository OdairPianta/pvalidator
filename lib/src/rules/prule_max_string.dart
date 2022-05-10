import 'package:pvalidator/src/rules/rule.dart';

class PRuleMaxString implements Rule {
  String? _value;
  int max;
  String message;

  PRuleMaxString(this._value, this.max, {this.message = "Maximum size is"});

  @override
  String? validate() {
    if (this._value == null || this._value?.trim().length == 0) {
      return null;
    } else if (this._value!.length > this.max) {
      return "${this.message} ${this.max.toString()}";
    } else {
      return null;
    }
  }
}
