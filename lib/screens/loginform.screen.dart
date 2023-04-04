import 'package:flutter/material.dart';
import 'package:mz4h/components/buttons.dart';
import 'package:mz4h/components/input.component.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome back!",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(
              text: "Not a memeber yet?",
              style: TextStyle(
                color: Colors.white,
              ),
              // ignore: unnecessary_const
              children: const <TextSpan>[
                TextSpan(
                    text: '  Register now',
                    style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const LoginForm(),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool showRetypePassword = false;
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const Input(text: "Email"),
          const SizedBox(height: 20),
          const PasswordInput(text: "Password"),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            checkColor: Colors.grey,
            side: const BorderSide(
              color: Colors.grey,
            ),
            activeColor: Colors.red,
            title: const Text('Keep me logged in',
                style: TextStyle(color: Colors.white)),
            value: _isSelected,
            onChanged: (bool? value) {
              setState(() {
                _isSelected = !_isSelected;
              });
            },
          ),
          SizedBox(width: double.infinity, child: Button(text: "Login")),
          const TextButton(
              onPressed: null,
              child: Text("Forgot your password",
                  style: TextStyle(color: Colors.red)))
        ],
      ),
    );
  }
}
