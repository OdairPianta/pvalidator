abstract class Rule {
  /// Validate the value
  /// Return null if the value is valid
  /// Return the error message if the value is invalid
  /// Return null if the value is empty
  String? validate();
}
