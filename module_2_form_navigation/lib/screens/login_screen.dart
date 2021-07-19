import 'package:flutter/material.dart';
import 'package:module_2_form_navigation/screens/greetings_screen.dart';
import 'register_screen.dart';
import 'components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const idTextFieldHint = "Please enter your BITS ID number";
  static const passTextFieldHint = "Please enter your password";
  TextEditingController idController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Widget _getLoginForm() {
    return Form(
      child: Column(
        children: [
          getTextFormField("ID Number", idController, idTextFieldHint),
          getTextFormField("Password", passController, passTextFieldHint),
          getButton(
              "LOG IN",
              () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          GreetingsScreen(id: idController.text)))),
          const TextButton(
            child: Text("Forgot password?"),
            onPressed: null,
          )
        ],
      ),
    );
  }

  Widget _getRegisterButton() {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Don't have an account?"),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegisterScreen(
                              id: idController.text,
                              password: passController.text,
                            )));
              },
              child: const Text("Register")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.all(26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getMainTitle(),
            _getLoginForm(),
            _getRegisterButton(),
          ],
        ),
      ),
    ));
  }
}
