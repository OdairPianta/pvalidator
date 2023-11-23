import 'package:pvalidator/src/rules/rule.dart';

class MyCustomRule implements Rule {
  final String? _value;
  final String message;

  MyCustomRule(this._value, {this.message = "Value must be equal test"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().isEmpty == true) {
      return null;
    } else if (_value != "test") {
      return message;
    } else {
      return null;
    }
  }
}
