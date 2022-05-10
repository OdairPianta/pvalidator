import 'package:pvalidator/src/rules/rule.dart';

class PRuleMinNumeric implements Rule {
  String? _value;
  double min;
  String message;

  PRuleMinNumeric(this._value, this.min, {this.message = "Minimum is"});

  @override
  String? validate() {
    double? doubleValue = double.tryParse(this._value ?? '');
    if (this._value == null ||
        this._value?.trim().length == 0 ||
        doubleValue == null) {
      return null;
    } else if (doubleValue < this.min) {
      return "${this.message} ${this.min}";
    } else {
      return null;
    }
  }
}
