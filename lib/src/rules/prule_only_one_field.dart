import 'package:pvalidator/src/rules/rule.dart';

class PRuleOnlyOneField implements Rule {
  final List<String?> _values;
  final String message;

  /// Check if only one field has a value
  /// [values] is the values to check
  /// [message] is the error message
  PRuleOnlyOneField(this._values, {this.message = "Only one field is allowed"});

  @override
  String? validate() {
    int fieldsWithValue = 0;
    for (String? value in _values) {
      if (value != null && value.trim().isNotEmpty) {
        fieldsWithValue++;
      }
    }
    if (fieldsWithValue != 1) {
      return message;
    } else {
      return null;
    }
  }
}
