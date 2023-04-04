import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:mz4h/components/buttons.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          // "/assets/splash/A - 01-iPhone 13 Pro Max-4x.jpg",
          imagePath,
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
                Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      'Greetings, planet!',
                      style: TextStyle(
                        fontSize: 40,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = Colors.blue[700]!,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      'Greetings, planet!',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
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
