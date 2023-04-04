import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mz4h/components/buttons.dart';

class GettingStartedFirstScreen extends StatelessWidget {
  const GettingStartedFirstScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          // "/assets/splash/A - 01-iPhone 13 Pro Max-4x.jpg",
          "assets/splash/A - 01-iPhone 13 Pro Max-4x.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Image.asset(,
                //     height: 100, width: 100),
                SvgPicture.asset("assets/logo/mz4h-dark.svg",
                    height: 60, width: 60, semanticsLabel: 'mz4h Logo'),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: GettingStartedButton(),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
