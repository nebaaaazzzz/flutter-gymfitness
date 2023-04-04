import 'package:flutter/material.dart';
import 'package:mz4h/components/buttons.dart';
import 'package:mz4h/components/input.component.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create your account",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    text: "Already a member?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    // ignore: unnecessary_const
                    children: const <TextSpan>[
                      TextSpan(
                          text: '  Login', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const SignupForm()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool showRetypePassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Input(text: "First Name"),
          const SizedBox(height: 20),
          Input(text: "Last Name"),
          const SizedBox(height: 20),
          Input(text: "Email"),
          // Column(
//           //   crossAxisAlignment: CrossAxisAlignment.start,
//           //   children: [
//           //     const Text(
//           //       "Phone Number",
//           //       style: TextStyle(color: Colors.grey),
//           //     ),
//           //     const SizedBox(height: 4),
//           //     InternationalPhoneNumberInput(
//           //       onInputChanged: (PhoneNumber number) {
//           //         // print(number.phoneNumber);
//           //       },
//           //       onInputValidated: (bool value) {
//           //         print(value);
//           //       },
//           //       inputDecoration: const InputDecoration(
//           //         filled: true,
//           //         enabled: true,
//           //         contentPadding:
//           //             EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//           //         border: OutlineInputBorder(
//           //             borderRadius: BorderRadius.all(Radius.circular(10)),
//           //             borderSide:
//           //                 BorderSide(color: Colors.transparent, width: 1.0)),
//           //         focusedBorder: OutlineInputBorder(
//           //             borderRadius: BorderRadius.all(Radius.circular(10)),
//           //             borderSide:
//           //                 BorderSide(color: Colors.transparent, width: 1.0)),
//           //         hintStyle: TextStyle(color: Colors.grey),
//           //         fillColor: Color.fromARGB(255, 70, 69, 69),
//           //       ),
//           //       spaceBetweenSelectorAndTextField: 0,
//           //       textStyle: TextStyle(color: Colors.grey),
//           //       selectorConfig: const SelectorConfig(
//           //         selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
//           //       ),
//           //       ignoreBlank: false,
//           //       selectorTextStyle: TextStyle(color: Colors.grey),
//           //       autoValidateMode: AutovalidateMode.disabled,
//           //       // initialValue: number,
//           //       // textFieldController: controller,
//           //       formatInput: false,
//           //       keyboardType:
//           //           const TextInputType.numberWithOptions(signed: true),
//           //       inputBorder: const OutlineInputBorder(
//           //           borderRadius: BorderRadius.all(Radius.circular(10)),
//           //           borderSide:
//           //               BorderSide(color: Colors.transparent, width: 1.0)),
//           //       onSaved: (PhoneNumber number) {
//           //         print('On Saved: $number');
//           //       },
//           //     ),
//           //   ],
//           // ),
          const SizedBox(height: 20),
          const PasswordInput(text: "Password"),
          const SizedBox(height: 20),
          Row(
            children: const [
              Icon(Icons.info_outline, color: Colors.grey),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Hint: The password should be at least twelve characters long. To make it stronger. use upper and lower case letters, numbers, and symbols like ! ? & \$ % ) .",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          const PasswordInput(text: "Retype password"),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: "By registering, you agree to our",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              // ignore: unnecessary_const
              children: const <TextSpan>[
                TextSpan(
                    text: ' terms and conditions',
                    style: TextStyle(color: Colors.red)),
                TextSpan(text: ' and', style: TextStyle(color: Colors.white)),
                TextSpan(
                    text: ' Privacy Policy',
                    style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(width: double.infinity, child: Button(text: "Sign Up")),
        ],
      ),
    );
  }
}
