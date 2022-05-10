import 'package:pvalidator/src/rules/rule.dart';

class PRuleMaxNumeric implements Rule {
  String? _value;
  double max;
  String message;

  PRuleMaxNumeric(this._value, this.max, {this.message = "Maximum value is"});

  @override
  String? validate() {
    double? doubleValue = double.tryParse(this._value ?? '');
    if (this._value == null ||
        this._value?.trim().length == 0 ||
        doubleValue == null) {
      return null;
    } else if (doubleValue > this.max) {
      return "${this.message} ${this.max.toString()}";
    } else {
      return null;
    }
  }
}
