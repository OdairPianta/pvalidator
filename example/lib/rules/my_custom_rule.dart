import 'package:pvalidator/src/rules/rule.dart';

class MyCustomRule implements Rule {
  String? _value;
  String message;

  MyCustomRule(this._value, {this.message = "Value must be equal test"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().length == 0) {
      return null;
    } else if (_value != "test") {
      return message;
    } else {
      return null;
    }
  }
}
