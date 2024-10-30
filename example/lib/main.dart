import 'package:example/rules/my_custom_rule.dart';
import 'package:flutter/material.dart';
import 'package:pvalidator/pvalidator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'PValidator Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController acceptValuesController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController maxNumericController = TextEditingController();
  TextEditingController maxStringController = TextEditingController();
  TextEditingController minNumericController = TextEditingController();
  TextEditingController minStringController = TextEditingController();
  TextEditingController numericController = TextEditingController();
  TextEditingController regexpController = TextEditingController();
  TextEditingController requiredController = TextEditingController();
  TextEditingController requiredifController = TextEditingController();
  TextEditingController sameController = TextEditingController();
  TextEditingController sizeStringController = TextEditingController();
  TextEditingController minDateTimeController = TextEditingController();
  TextEditingController maxDateTimeController = TextEditingController();
  TextEditingController integerController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController cnpjController = TextEditingController();
  TextEditingController onlyOneFieldController = TextEditingController();
  TextEditingController multipleController = TextEditingController();
  TextEditingController customController = TextEditingController();

  void _save() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  void initState() {
    acceptValuesController.text = 'C';
    dateController.text = '12-12-2022';
    emailController.text = 'invalid email@test.com';
    maxNumericController.text = '100';
    maxStringController.text = '123456';
    minNumericController.text = '100';
    minStringController.text = '1234';
    numericController.text = 'invalid number';
    regexpController.text = '12345';
    requiredController.text = '';
    requiredifController.text = '';
    sameController.text = '123456';
    sizeStringController.text = '123456';
    minDateTimeController.text = '2000-01-01';
    maxDateTimeController.text = '2020-01-01';
    integerController.text = '2.2';
    cpfController.text = '99988877766';
    cnpjController.text = '99888777666655';
    onlyOneFieldController.text = 'this field is present';
    multipleController.text = '';
    customController.text = 'other string';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('acceptValues'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: acceptValuesController,
                    validator: (string) {
                      return PValidator([
                        PRuleAcceptValues(string, ['A', 'B']),
                      ]).val();
                    },
                  ),
                ),
                const Text('date'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: dateController,
                    validator: (string) {
                      return PValidator([
                        PRuleDateTime(string),
                      ]).val();
                    },
                  ),
                ),
                const Text('email'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: emailController,
                    validator: (string) {
                      return PValidator([
                        PRuleEmail(string),
                      ]).val();
                    },
                  ),
                ),
                const Text('maxNumeric'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: maxNumericController,
                    validator: (string) {
                      return PValidator([
                        PRuleMaxNumeric(string, 50),
                      ]).val();
                    },
                  ),
                ),
                const Text('maxString'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: maxStringController,
                    validator: (string) {
                      return PValidator([
                        PRuleMaxString(string, 5),
                      ]).val();
                    },
                  ),
                ),
                const Text('minNumeric'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: minNumericController,
                    validator: (string) {
                      return PValidator([
                        PRuleMinNumeric(string, 200),
                      ]).val();
                    },
                  ),
                ),
                const Text('minString'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: minStringController,
                    validator: (string) {
                      return PValidator([
                        PRuleMinString(string, 5),
                      ]).val();
                    },
                  ),
                ),
                const Text('numeric'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: numericController,
                    validator: (string) {
                      return PValidator([
                        PRuleNumeric(string),
                      ]).val();
                    },
                  ),
                ),
                const Text('regexp'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: regexpController,
                    validator: (string) {
                      return PValidator([
                        PRuleRegex(string, r"^[a-z]+"),
                      ]).val();
                    },
                  ),
                ),
                const Text('required'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: requiredController,
                    validator: (string) {
                      return PValidator([
                        PRuleRequired(string),
                      ]).val();
                    },
                  ),
                ),
                const Text('requiredif'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: requiredifController,
                    validator: (string) {
                      return PValidator([
                        PRuleRequiredIf(string, true),
                      ]).val();
                    },
                  ),
                ),
                const Text('same'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: sameController,
                    validator: (string) {
                      return PValidator([
                        PRuleSame(string, "12345"),
                      ]).val();
                    },
                  ),
                ),
                const Text('sizeString'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: sizeStringController,
                    validator: (string) {
                      return PValidator([
                        PRuleSizeString(string, 5),
                      ]).val();
                    },
                  ),
                ),
                const Text('minimumDateTime'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: minDateTimeController,
                    validator: (string) {
                      return PValidator([
                        PRuleMinDateTimeString(string, DateTime.parse("2020-01-01")),
                      ]).val();
                    },
                  ),
                ),
                const Text('maximumDateTime'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: maxDateTimeController,
                    validator: (string) {
                      return PValidator([
                        PRuleMaxDateTimeString(string, DateTime.parse("2000-01-01")),
                      ]).val();
                    },
                  ),
                ),
                const Text('integer'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: integerController,
                    validator: (string) {
                      return PValidator([
                        PRuleInteger(string),
                      ]).val();
                    },
                  ),
                ),
                const Text('CPF'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: cpfController,
                    validator: (string) {
                      return PValidator([
                        PRuleCpf(string),
                      ]).val();
                    },
                  ),
                ),
                const Text('CNPJ'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: cnpjController,
                    validator: (string) {
                      return PValidator([
                        PRuleCnpj(string),
                      ]).val();
                    },
                  ),
                ),
                const Text('Only one field'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: onlyOneFieldController,
                    validator: (string) {
                      return PValidator([
                        PRuleOnlyOneField([string, "other field"]),
                      ]).val();
                    },
                  ),
                ),
                const Text('Multiple validator'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: multipleController,
                    validator: (string) {
                      return PValidator([
                        PRuleRequired(string),
                        PRuleSizeString(string, 5),
                      ]).val();
                    },
                  ),
                ),
                const Text('Custom Rule'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    controller: customController,
                    validator: (string) {
                      return PValidator([
                        MyCustomRule(string),
                      ]).val();
                    },
                  ),
                ),
                MaterialButton(
                  onPressed: () => _save(),
                  color: Colors.blue,
                  child: const Text("Validate"),
                  textColor: Colors.white,
                  minWidth: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
