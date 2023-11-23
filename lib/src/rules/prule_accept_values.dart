import 'package:pvalidator/src/rules/rule.dart';

class PRuleAcceptValues implements Rule {
  final String? _value;
  final List<String> listAccept;
  final String message;

  /// Check if the value is in the list of accepted values
  /// [value] is the value to check
  /// [listAccept] is the list of accepted values
  /// [message] is the error message
  PRuleAcceptValues(this._value, this.listAccept,
      {this.message = "Invalid value"});

  @override
  String? validate() {
    if (_value == null || _value?.trim().isEmpty == true) {
      return null;
    } else if (!listAccept.contains(_value)) {
      return message;
    } else {
      return null;
    }
  }
}
