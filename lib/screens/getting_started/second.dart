import 'package:flutter/material.dart';
import 'package:mz4h/components/buttons.dart';

class GettingStartedSecondScreen extends StatelessWidget {
  const GettingStartedSecondScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          // "/assets/splash/A - 01-iPhone 13 Pro Max-4x.jpg",
          "assets/splash/B - 01-iPhone 13 Pro Max-4x.jpg",
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          'Workout',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2
                              ..color = Colors.white,
                          ),
                        ),
                        // Solid text as fill.
                        const Text(
                          'Workout',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 199, 41, 30),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          'anywhere, anytime',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1
                              ..color = Colors.white,
                          ),
                        ),
                        // Solid text as fill.
                        const Text(
                          'anywhere, anytime',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
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
