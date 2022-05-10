import 'package:pvalidator/src/rules/rule.dart';

class PRuleMinString implements Rule {
  String? _value;
  int min;
  String message;

  PRuleMinString(this._value, this.min, {this.message = "Minimum size is"});

  @override
  String? validate() {
    if (this._value == null || this._value?.trim().length == 0) {
      return null;
    } else if (this._value!.length < this.min) {
      return "${this.message} ${this.min}";
    } else {
      return null;
    }
  }
}
