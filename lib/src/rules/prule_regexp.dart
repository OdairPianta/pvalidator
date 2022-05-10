import 'package:pvalidator/src/rules/rule.dart';

class PRuleRegex implements Rule {
  String? _value;
  String _pattern;
  String message;

  PRuleRegex(this._value, this._pattern,
      {this.message = "Invalid format value"});

  @override
  String? validate() {
    if (this._value == null || this._value?.trim().length == 0) {
      return null;
    } else if (!RegExp(this._pattern).hasMatch(this._value ?? '')) {
      return this.message;
    } else {
      return null;
    }
  }
}
