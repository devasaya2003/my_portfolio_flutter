import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_example/app/utils/constants.dart';
import 'package:web_app_example/constants/constants.dart';

// ================== ABOUT ==================

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer2(),
      tablet: (BuildContext context) => tabletContainer2(),
      desktop: (BuildContext context) => desktopContainer2(),
    );
  }

  // ================== Mobile ==================

  Widget mobileContainer2() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("About Me",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            Text(
              about1Mobile,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            Text(
              about2Mobile,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            Text(
              about3Mobile,
              style: TextStyle(fontSize: 15),
            ),
            // SizedBox(height: 30),
          ],
        ));
  }

  // ================== Tablet ==================

  Widget tabletContainer2() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("About Me",
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  about1Tablet,
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(width: w! / 100),
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(15 / 360),
                  child: Image.asset(
                    "images/icon_flutter.png",
                    width: w! / 20,
                  ),
                )
              ],
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(-20 / 360),
                  child: Image.asset(
                    "images/sides.png",
                    width: w! / 5,
                  ),
                ),
                SizedBox(width: w! / 100),
                const Text(
                  about2,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  about3,
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(width: w! / 100),
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(7 / 360),
                  child: Image.asset(
                    "images/hobbies.png",
                    width: w! / 5,
                  ),
                ),
              ],
            ),
            // SizedBox(height: 30),
          ],
        ));
  }

  // ================== Desktop ==================

  Widget desktopContainer2() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("About Me",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  about1,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: w! / 100),
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(15 / 360),
                  child: Image.asset(
                    "images/icon_flutter.png",
                    width: w! / 20,
                  ),
                )
              ],
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(-20 / 360),
                  child: Image.asset(
                    "images/sides.png",
                    width: w! / 5,
                  ),
                ),
                SizedBox(width: w! / 100),
                const Text(
                  about2,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  about3,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: w! / 100),
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(7 / 360),
                  child: Image.asset(
                    "images/hobbies.png",
                    width: w! / 5,
                  ),
                ),
              ],
            ),
            // SizedBox(height: 30),
          ],
        ));
  }
}
