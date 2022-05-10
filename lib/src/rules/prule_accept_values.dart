import 'package:pvalidator/src/rules/rule.dart';

class PRuleAcceptValues implements Rule {
  String? _value;
  List<String> listAccept;
  String message;

  PRuleAcceptValues(this._value, this.listAccept,
      {this.message = "Invalid value"});

  @override
  String? validate() {
    if (this._value == null || this._value?.trim().length == 0) {
      return null;
    } else if (!listAccept.contains(this._value)) {
      return this.message;
    } else {
      return null;
    }
  }
}
