import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_example/app/utils/constants.dart';
import 'package:web_app_example/app/utils/styles.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: widget.preferredSize.height,
      backgroundColor: Colors.black,
      elevation: 0,
      surfaceTintColor: Colors.black,
      flexibleSpace: ScreenTypeLayout.builder(
        mobile: (BuildContext context) => mobileNavBar(),
        tablet: (BuildContext context) => tabletNavBar(),
        desktop: (BuildContext context) => desktopNavBar(),
        // tablet: ,
      ),
    );
  }

// ================== Mobile ==================

  Widget mobileNavBar() {
    return SafeArea(
      child: SizedBox(
        height: 70,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => Container(
                    margin: EdgeInsets.symmetric(horizontal: w! / 30),
                    color: Colors.black12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        NavButtonMobile(
                          text: 'About',
                          fontSize: 12,
                          margin: 4,
                          containerKey: container2Key,
                        ),
                        NavButtonMobile(
                            text: 'Projects',
                            fontSize: 12,
                            margin: 4,
                            containerKey: container3Key),
                        NavButtonMobile(
                          text: 'Socials',
                          fontSize: 12,
                          margin: 4,
                          containerKey: container4Key,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: ElevatedButton(
                            style: borderedButtonStyle,
                            onPressed: () async {
                              Uri url = Uri.parse(
                                  'https://drive.google.com/file/d/1meT4Za1WIoiuXiPU5xgIbUERtsmr6fE_/view?usp=sharing');
                              try {
                                await launchUrl(url);
                              } catch (e) {
                                print('Could not launch $url: $e');
                              }
                              if (navigatorKey.currentState!.canPop()) {
                                navigatorKey.currentState!.pop();
                              }
                            },
                            child: const Text(
                              "Resume",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ================== Tablet ==================

  Widget tabletNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 12),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // NavLogo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavButton(
                text: 'About',
                fontSize: 14,
                margin: w! / 40,
                containerKey: container2Key,
              ),
              NavButton(
                  text: 'Projects',
                  fontSize: 14,
                  margin: w! / 40,
                  containerKey: container3Key),
              NavButton(
                text: 'Socials',
                fontSize: 14,
                margin: w! / 40,
                containerKey: container4Key,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: w! / 40,
                ),
                child: ElevatedButton(
                  style: borderedButtonStyle,
                  onPressed: () async {
                    Uri url = Uri.parse(
                        'https://drive.google.com/file/d/1meT4Za1WIoiuXiPU5xgIbUERtsmr6fE_/view?usp=sharing');
                    try {
                      await launchUrl(url);
                    } catch (e) {
                      print('Could not launch $url: $e');
                    }
                  },
                  child: const Text(
                    "Resume",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  // ================== Desktop ==================

  Widget desktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 12),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // NavLogo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavButton(
                text: 'About',
                fontSize: 16,
                margin: w! / 20,
                containerKey: container2Key,
              ),
              NavButton(
                  text: 'Projects',
                  fontSize: 16,
                  margin: w! / 20,
                  containerKey: container3Key),
              NavButton(
                text: 'Socials',
                fontSize: 16,
                margin: w! / 20,
                containerKey: container4Key,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: w! / 20,
                ),
                child: ElevatedButton(
                  style: borderedButtonStyle,
                  onPressed: () async {
                    Uri url = Uri.parse(
                        'https://drive.google.com/file/d/1meT4Za1WIoiuXiPU5xgIbUERtsmr6fE_/view?usp=sharing');
                    try {
                      await launchUrl(url);
                    } catch (e) {
                      print('Could not launch $url: $e');
                    }
                  },
                  child: const Text(
                    "Resume",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double margin;
  final GlobalKey containerKey;

  const NavButton({
    super.key,
    required this.text,
    required this.fontSize,
    required this.margin,
    required this.containerKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      child: ElevatedButton(
        style: borderedButtonStyle,
        onPressed: () {
          Scrollable.ensureVisible(
            containerKey.currentContext!,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        },
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

class NavButtonMobile extends StatelessWidget {
  final String text;
  final double fontSize;
  final double margin;
  final GlobalKey containerKey;

  const NavButtonMobile({
    super.key,
    required this.text,
    required this.fontSize,
    required this.margin,
    required this.containerKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: margin),
      child: ElevatedButton(
        style: borderedButtonStyle,
        onPressed: () {
          Scrollable.ensureVisible(
            containerKey.currentContext!,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
          if (navigatorKey.currentState!.canPop()) {
            navigatorKey.currentState!.pop();
          }
        },
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
