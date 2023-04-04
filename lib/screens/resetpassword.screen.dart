import 'package:flutter/material.dart';
import 'package:mz4h/components/buttons.dart';
import 'package:mz4h/components/input.component.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Trouble signing-in?",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            "Enter your email to retrieve your account",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          LoginForm(),
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
  final bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const Input(text: "Email"),
          const SizedBox(height: 20),
          SizedBox(
              width: double.infinity, child: Button(text: "Reset my password")),
        ],
      ),
    );
  }
}
