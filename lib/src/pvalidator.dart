import 'package:pvalidator/src/rules/rule.dart';

class PValidator {
  List<Rule> rules;

  PValidator(this.rules);

  String? val() {
    for (var rule in rules) {
      if (rule.validate() != null) {
        return rule.validate();
      }
    }
    return null;
  }
}
