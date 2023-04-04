import 'package:flutter/material.dart';
import 'package:mz4h/screens/getting_started/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mz4h/components/buttons.dart';

class GettingStartedThirdScreen extends StatelessWidget {
  const GettingStartedThirdScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          // "/assets/splash/A - 01-iPhone 13 Pro Max-4x.jpg",
          "assets/splash/C - 01-iPhone 13 Pro Max-4x.jpg",
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
                Container(),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: <Widget>[
                              // Stroked text as border.
                              Text(
                                'Eating Right',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 1
                                    ..color = Colors.white,
                                ),
                              ),
                              // Solid text as fill.
                              const Text(
                                'Eating Right',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 201, 39, 28),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              // Stroked text as border.
                              Text(
                                'with results',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 1
                                    ..color = Colors.white,
                                ),
                              ),
                              // Solid text as fill.
                              const Text(
                                'with results',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: GettingStartedButton(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
