import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_example/app/utils/constants.dart';
import 'package:web_app_example/app/utils/styles.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
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
                  context: navigatorKey.currentContext!,
                  builder: (context) => Container(
                    margin: EdgeInsets.only(left: 10, right: w! / 1.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        navButtonMobile('About', 12, 4, container2Key),
                        navButtonMobile('Projects', 12, 4, container3Key),
                        navButtonMobile('Socials', 12, 4, container4Key),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 0,
                          ),
                          child: ElevatedButton(
                            style: borderedButtonStyle,
                            onPressed: () async {
                              Uri url = Uri.parse(
                                  'https://drive.google.com/file/d/1Au6NrFF8fACB9DUwrW2kzKQHdRgQjFfi/view?usp=sharing');
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
              icon: const Icon(
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
              navButton(
                'About',
                14,
                w! / 40,
                container2Key,
              ),
              navButton('Projects', 14, w! / 40, container3Key),
              navButton(
                'Socials',
                14,
                w! / 40,
                container4Key,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: w! / 40,
                ),
                child: ElevatedButton(
                  style: borderedButtonStyle,
                  onPressed: () async {
                    Uri url = Uri.parse(
                        'https://drive.google.com/file/d/1Au6NrFF8fACB9DUwrW2kzKQHdRgQjFfi/view?usp=sharing');
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
              navButton(
                'About',
                16,
                w! / 20,
                container2Key,
              ),
              navButton('Projects', 16, w! / 20, container3Key),
              navButton(
                'Socials',
                16,
                w! / 20,
                container4Key,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: w! / 20,
                ),
                child: ElevatedButton(
                  style: borderedButtonStyle,
                  onPressed: () async {
                    Uri url = Uri.parse(
                        'https://drive.google.com/file/d/1Au6NrFF8fACB9DUwrW2kzKQHdRgQjFfi/view?usp=sharing');
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

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

Widget navButton(
    String text, double fontSize, double margin, GlobalKey containerKey) {
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

Widget navButtonMobile(
    String text, double fontSize, double margin, GlobalKey containerKey) {
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
