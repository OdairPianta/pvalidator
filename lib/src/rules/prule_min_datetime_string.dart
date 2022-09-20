import 'package:pvalidator/src/rules/rule.dart';

class PRuleMinDateTimeString implements Rule {
  String? _value;
  DateTime min;
  String message;

  PRuleMinDateTimeString(this._value, this.min,
      {this.message = "Minimum date is"});

  @override
  String? validate() {
    DateTime? dateTime = DateTime.tryParse(this._value ?? '');

    if (this._value == null ||
        this._value?.trim().length == 0 ||
        dateTime == null) {
      return null;
    } else if (dateTime.compareTo(min) < 0) {
      return this.message + ' ' + this.min.toString();
    } else {
      return null;
    }
  }
}
