import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

// ================== INTRO ==================

class IntroContainer extends StatefulWidget {
  const IntroContainer({super.key});

  @override
  State<IntroContainer> createState() => _IntroContainerState();
}

class _IntroContainerState extends State<IntroContainer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer1(),
      tablet: (BuildContext context) => tabletContainer1(),
      desktop: (BuildContext context) => desktopContainer1(),
    );
  }

  // ================== Mobile ==================

  Widget mobileContainer1() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Image.asset(
                  'images/black_self.png',
                  scale: 1.4,
                ),
                const SizedBox(height: 50),
              ],
            ),
            const Column(
              children: [
                Text(
                  'Devasaya Singh',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                    "Hi! I'm Devasaya and I use flutter to build anything and everything.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14)),
              ],
            )
          ],
        ));
  }

  // ================== Tablet ==================

  Widget tabletContainer1() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Image.asset(
                  'images/black_self.png',
                  scale: 1.4,
                ),
                const SizedBox(height: 50),
              ],
            ),
            const Column(
              children: [
                Text(
                  'Devasaya Singh',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                    "Hi! I'm Devasaya and I use flutter to build anything and everything.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14)),
              ],
            )
          ],
        ));
  }
}

// ================== Desktop ==================

Widget desktopContainer1() {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Image.asset(
                'images/black_self.png',
                scale: 1.4,
              ),
              const SizedBox(height: 105),
            ],
          ),
          const Column(
            children: [
              Text(
                'Devasaya Singh',
                style: TextStyle(
                  fontSize: 88,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                  "Hi! I'm Devasaya and I use flutter to build anything and everything.",
                  style: TextStyle(fontSize: 20)),
            ],
          )
        ],
      ));
}
