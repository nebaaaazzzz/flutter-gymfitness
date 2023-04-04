import 'package:flutter/material.dart';
import 'package:mz4h/components/buttons.dart';
import 'package:mz4h/components/input.component.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Set your new password",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            "your security is one of our top priorities",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          ChangePasswordForm(),
        ],
      ),
    );
  }
}

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  State<ChangePasswordForm> createState() => __ChangePasswordFormState();
}

class __ChangePasswordFormState extends State<ChangePasswordForm> {
  final _formKey = GlobalKey<FormState>();
  bool showRetypePassword = false;
  final bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const PasswordInput(text: "Password"),
          const SizedBox(height: 20),
          Row(
            children: const [
              Icon(Icons.info_outline, color: Colors.grey),
              SizedBox(width: 15),
              Expanded(
                child: Text(
                  "Hint: The password should be at least twelve characters long. To make it stronger. use upper and lower case letters, numbers, and symbols like ! ? & \$ % ) .",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          const PasswordInput(text: "Retype Password"),
          const SizedBox(height: 20),
          SizedBox(
              width: double.infinity, child: Button(text: "Reset my password")),
        ],
      ),
    );
  }
}
