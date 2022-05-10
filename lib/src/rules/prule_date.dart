import 'package:pvalidator/src/rules/rule.dart';

class PRuleDateTime implements Rule {
  String? _value;
  String message;

  PRuleDateTime(this._value, {this.message = "Invalid date"});

  @override
  String? validate() {
    DateTime? dateTime = DateTime.tryParse(this._value ?? '');

    if (this._value == null || this._value?.trim().length == 0) {
      return null;
    } else if (dateTime == null) {
      return this.message;
    } else {
      return null;
    }
  }
}
