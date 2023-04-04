import 'package:flutter/material.dart';

class GettingStartedButton extends StatelessWidget {
  GettingStartedButton({
    super.key,
  });

  final ButtonStyle style = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 12),
      backgroundColor: const Color.fromARGB(255, 177, 28, 17));
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Get Started'),
          SizedBox(width: 10),
          Icon(
            Icons.arrow_forward,
            size: 20,
          )
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  Button({
    super.key,
    required this.text,
  });
  final String text;
  final ButtonStyle style = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 12),
      backgroundColor: const Color.fromARGB(255, 177, 28, 17));
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      child: Text(text),
      onPressed: () {},
    );
  }
}
