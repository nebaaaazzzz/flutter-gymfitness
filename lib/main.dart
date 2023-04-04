import 'package:flutter/material.dart';
import 'package:mz4h/screens/getting_started/first.dart';
import 'package:mz4h/screens/getting_started/second.dart';
import 'package:mz4h/screens/getting_started/third.dart';
import 'package:mz4h/screens/home.screen.dart';

// // GoRouter configuration
// final _router = GoRouter(
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => HomeScreen(),
//     ),
//   ],
// )
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'mz4h';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      color: Colors.black,
      home: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(title: const Text(_title)),
        body: SafeArea(child: HomeScreen()),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      onPageChanged: (int page) {
        print(page);
      },
      children: const <Widget>[
        GettingStartedFirstScreen(),
        GettingStartedSecondScreen(),
        GettingStartedThirdScreen()
      ],
    );
  }
}
