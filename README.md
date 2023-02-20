<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

A simple package to validate inputs in flutter.

<p align="center">
  <img src="https://github.com/OdairPianta/pvalidator/blob/master/example/lib/assets/pvalidation_demo_screen.png?raw=true" alt="Sample PValidator" />
</p>

## Features

Avaliable rules
* Accept values: list of accepted values
* Date: test with DateTime.tryParse
* Email: email validate
* Max numeric: check max number
* Max string: check max string size
* Min numeric: check min number
* Min string: check min string size
* Numeric: check value is numeric
* Regexp: validate with regular expression
* Required: check if exist value
* Requiredif: check if exist value if
* Same: value must be same
* Size string: value size check
* Minimum date time: parse string and check is date is after the minimum
* maximum date time: parse string and check is date is before the maximum
* Size string: value size check
* Integer: check value is a integer


## packages.yaml
```yaml
pvalidator: <lastest version>
```

## Usage

Mandatory field validation example:

```dart
TextFormField(
  validator: (string) {
    return PValidator([
      PRuleRequired(string),
    ]).val();
  },
)
```

PValidator is the master class. PRuleRequired is the validate rule. Set one or more rules to validate. 

Validate with multiple rules:

```dart
TextFormField(
  validator: (string) {
    return PValidator([
      PRuleRequired(string),
      PRuleSizeString(string, 5),
    ]).val();
  },
)
```

Create your custom rule
```dart
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
```
