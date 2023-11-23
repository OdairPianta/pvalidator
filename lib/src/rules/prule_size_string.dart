import 'package:pvalidator/src/rules/rule.dart';

class PRuleSizeString implements Rule {
  final String? _value;
  final int size;
  final String message;

  /// Check if the value size is equal to the size value
  /// [value] is the value to check
  /// [size] is the size of value
  /// [message] is the error message
  PRuleSizeString(this._value, this.size, {this.message = "Size must be"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().length == 0) {
      return null;
    } else if (_value!.length != size) {
      return "$message $size";
    } else {
      return null;
    }
  }
}
