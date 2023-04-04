import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "assets/logo/mz4h-light.svg",
              height: 60,
              width: 60,
              semanticsLabel: 'mz4h Logo',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Join our family of MZ4H Community",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    text: "Not a member yet?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    // ignore: unnecessary_const
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Register now',
                          style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const GoogleLoginButton(),
                    const FacebookLoginButton(),
                    const EmailLoginButton()
                  ],
                )
              ],
            ),
            // const Text(
            //  ,
            //   style: TextStyle(color: Colors.white, fontSize: 30),
            // ),
            Container(),
            Container()
          ]),
    );
  }
}

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    super.key,
  });
  static const String google = "Login With Google";
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 7, horizontal: 20)),
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 192, 49, 38))),
      onPressed: () {},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            child: Image.asset(
              "assets/logo/google.png",
              width: 15,
              height: 15,
            )),
        const Text(
          google,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Container()
      ]),
    );
  }
}

class FacebookLoginButton extends StatelessWidget {
  const FacebookLoginButton({
    super.key,
  });
  static const String facebook = "Login With Facebook";
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 7, horizontal: 20)),
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 192, 49, 38))),
      onPressed: () {},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            child: SvgPicture.asset(
              "assets/logo/facebook.svg",
              width: 15,
              height: 15,
            )),
        const Text(
          facebook,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Container()
      ]),
    );
  }
}

class EmailLoginButton extends StatelessWidget {
  const EmailLoginButton({
    super.key,
  });
  static const String facebook = "Login With Email";
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 8, horizontal: 20)),
          side: MaterialStateProperty.all(BorderSide(color: Colors.white)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent)),
      onPressed: () {},
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.email,
          color: Colors.white,
        ),
        const Text(
          facebook,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Container()
      ]),
    );
  }
}
