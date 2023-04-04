import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 5),
        TextFormField(
          cursorColor: Colors.grey,
          style: const TextStyle(color: Colors.grey),
          decoration: InputDecoration(
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabled: true,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.transparent, width: 1.0)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.transparent, width: 1.0)),
            hintText: 'Enter $text',
            hintStyle: const TextStyle(color: Colors.grey),
            fillColor: const Color.fromARGB(255, 70, 69, 69),
          ),
          // The validator receives the text that the user has entered.
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ],
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 5),
        TextFormField(
          obscureText: true,
          cursorColor: Colors.grey,
          style: TextStyle(color: Colors.grey),
          decoration: const InputDecoration(
            filled: true,
            enabled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.transparent, width: 1.0)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.transparent, width: 1.0)),
            hintText: "Enter password",
            hintStyle: TextStyle(color: Colors.grey),
            fillColor: Color.fromARGB(255, 70, 69, 69),
          ),
          // The validator receives the text that the user has entered.
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ],
    );
  }
}
