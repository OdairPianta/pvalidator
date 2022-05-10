import 'package:pvalidator/src/rules/rule.dart';

class PRuleSizeString implements Rule {
  String? _value;
  int size;
  String message;

  PRuleSizeString(this._value, this.size, {this.message = "Size must be"});

  @override
  String? validate() {
    if (this._value == null || this._value?.trim().length == 0) {
      return null;
    } else if (this._value!.length != this.size) {
      return "${this.message} ${this.size}";
    } else {
      return null;
    }
  }
}
