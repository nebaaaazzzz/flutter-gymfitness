import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      body: <Widget>[
        const HomePage(),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: NavigationBar(
              height: 60,
              backgroundColor: Colors.red,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              selectedIndex: currentPageIndex,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                NavigationDestination(
                  icon: Icon(Icons.search),
                  label: '',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.bookmark),
                  icon: Icon(Icons.bookmark_border),
                  label: '',
                ),
              ]),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/logo/mz4h-light.svg",
                    height: 50, width: 50, semanticsLabel: 'mz4h Logo'),
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://plus.unsplash.com/premium_photo-1661629473263-572abf51d7c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Your program",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TopContentContainer(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "New Releases",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 5,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (BuildContext context, int index) {
                return const ContentContainer();
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Mobility",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    )),
                Row(
                  children: const [
                    Text("See All", style: TextStyle(color: Colors.white)),
                    Icon(Icons.arrow_forward, color: Colors.white)
                  ],
                )
              ],
            ),
            ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 5,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (BuildContext context, int index) {
                return const ContentContainer();
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ],
        ),
      ),
    );
  }
}

class TopContentContainer extends StatelessWidget {
  const TopContentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 180,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 204, 229, 241),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Positioned(
                right: 10,
                child: Image.asset(
                    width: 170,
                    height: 170,
                    "assets/images/top-view-pink-fitness-mat-two-black-dumbbells-isolated-pink-surface.png")),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "No Program selected",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Get started',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentContainer extends StatelessWidget {
  const ContentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Image.asset("assets/images/thumbnail@3x.jpg"),
              Positioned(
                  bottom: 15,
                  right: 15,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text("19:59"),
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Hit . Beginner",
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "Lorem ipsum dolor sit amet consetetur sadipscing elitr",
          style: TextStyle(color: Colors.white, fontSize: 17),
        )
      ],
    );
  }
}
