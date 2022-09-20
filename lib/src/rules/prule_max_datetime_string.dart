import 'package:pvalidator/src/rules/rule.dart';

class PRuleMaxDateTimeString implements Rule {
  String? _value;
  DateTime max;
  String message;

  PRuleMaxDateTimeString(this._value, this.max,
      {this.message = "Maximum date is"});

  @override
  String? validate() {
    DateTime? dateTime = DateTime.tryParse(this._value ?? '');

    if (this._value == null ||
        this._value?.trim().length == 0 ||
        dateTime == null) {
      return null;
    } else if (dateTime.compareTo(max) > 0) {
      return this.message + ' ' + this.max.toString();
    } else {
      return null;
    }
  }
}
