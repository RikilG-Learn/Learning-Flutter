import 'package:flutter/material.dart';
import 'package:module_2_form_navigation/screens/greetings_screen.dart';
import 'components.dart';

class RegisterScreen extends StatefulWidget {
  final String id;
  final String password;
  RegisterScreen({Key? key, this.id = "", this.password = ""})
      : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  static const idTextFieldHint = "Please enter your BITS ID number";
  static const passTextFieldHint = "Please enter your password";
  TextEditingController? idController;
  TextEditingController? passController;
  String? dropdownvalue = "2017";
  bool updateSwitch = true;
  String? radioValue = "yes";

  @override
  void initState() {
    super.initState();
    idController = TextEditingController(text: widget.id);
    passController = TextEditingController(text: widget.password);
  }

  Widget _getBatchDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label("Batch"),
        DropdownButton<String>(
          isExpanded: true,
          value: dropdownvalue,
          icon: const Icon(Icons.keyboard_arrow_down),
          onChanged: (String? newval) {
            setState(() {
              dropdownvalue = newval;
            });
          },
          items: ["2017", "2018", "2019", "2020"]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _getUpdatesSwitch() {
    return SwitchListTile(
      title: const Text("Receive regular updates"),
      value: updateSwitch,
      onChanged: (bool val) => setState(() => updateSwitch = val),
    );
  }

  Widget _getRadioList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label("Are you excited for this !!"),
        Row(
          children: [
            Expanded(
                child: RadioListTile(
              title: const Text("Yes"),
              value: "yes",
              groupValue: radioValue,
              onChanged: (String? s) => setState(() => radioValue = s),
            )),
            Expanded(
                child: RadioListTile(
              title: const Text("No"),
              value: "no",
              groupValue: radioValue,
              onChanged: (String? s) => setState(() => radioValue = s),
            )),
          ],
        )
      ],
    );
  }

  Widget _getLoginForm() {
    return Form(
      child: Column(
        children: [
          getTextFormField("ID Number", idController, idTextFieldHint),
          getTextFormField("Password", passController, passTextFieldHint),
          _getBatchDropdown(),
          _getUpdatesSwitch(),
          _getRadioList(),
          getButton(
              "REGISTER",
              () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GreetingsScreen(
                            id: idController!.text,
                          )))),
        ],
      ),
    );
  }

  Widget _getLoginPageButton() {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Already have an account?"),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _getLoginForm(),
                _getLoginPageButton(),
              ],
            ),
          ),
        ));
  }
}
