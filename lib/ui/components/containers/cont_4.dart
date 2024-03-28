import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_example/app/utils/constants.dart';

// ================== Socials ==================

class SocialsContainer extends StatelessWidget {
  const SocialsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer4(),
      tablet: (BuildContext context) => tabletContainer4(),
      desktop: (BuildContext context) => desktopContainer4(),
    );
  }

  // ================== Mobile ==================
  Widget mobileContainer4() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Socials",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      socialWidget(
                        "https://i.ibb.co/f9TYNr4/github.png",
                        "https://github.com/devasaya2003",
                        w! / 7,
                      ),
                      socialWidget(
                        "https://i.ibb.co/0Z0PLhc/twitter.png",
                        "https://twitter.com/DevasyaSingh1",
                        w! / 7,
                      ),
                      socialWidget(
                        "https://i.ibb.co/nb9wdk3/linkedin.png",
                        "https://www.linkedin.com/in/devasayasingh",
                        w! / 7,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      socialWidget(
                        "https://i.ibb.co/3YdfczF/gmail.png",
                        "mailto:devasyasingh2000@gmail.com",
                        w! / 10,
                      ),
                      socialWidget(
                        "https://i.ibb.co/SNZHq6B/insta.png",
                        "https://www.instagram.com/a.divine_story",
                        w! / 10,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  // ================== Tablet ==================
  Widget tabletContainer4() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 100),
        // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // color: AppColors.primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Socials",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  socialWidget(
                    "https://i.ibb.co/3YdfczF/gmail.png",
                    "mailto:devasyasingh2000@gmail.com",
                    w! / 12,
                  ),
                  socialWidget(
                    "https://i.ibb.co/f9TYNr4/github.png",
                    "https://github.com/devasaya2003",
                    w! / 12,
                  ),
                  socialWidget(
                    "https://i.ibb.co/0Z0PLhc/twitter.png",
                    "https://twitter.com/DevasyaSingh1",
                    w! / 12,
                  ),
                  socialWidget(
                    "https://i.ibb.co/nb9wdk3/linkedin.png",
                    "https://www.linkedin.com/in/devasayasingh",
                    w! / 12,
                  ),
                  socialWidget(
                    "https://i.ibb.co/SNZHq6B/insta.png",
                    "https://www.instagram.com/a.divine_story",
                    w! / 12,
                  ),
                ],
              ),
            )
          ],
        ));
  }

  // ================== Desktop ==================
  Widget desktopContainer4() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 100),
        // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // color: AppColors.primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Socials",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  socialWidget(
                    "https://i.ibb.co/3YdfczF/gmail.png",
                    "mailto:devasyasingh2000@gmail.com",
                    w! / 15,
                  ),
                  socialWidget(
                    "https://i.ibb.co/f9TYNr4/github.png",
                    "https://github.com/devasaya2003",
                    w! / 15,
                  ),
                  socialWidget(
                    "https://i.ibb.co/0Z0PLhc/twitter.png",
                    "https://twitter.com/DevasyaSingh1",
                    w! / 15,
                  ),
                  socialWidget(
                    "https://i.ibb.co/nb9wdk3/linkedin.png",
                    "https://www.linkedin.com/in/devasayasingh",
                    w! / 15,
                  ),
                  socialWidget(
                    "https://i.ibb.co/SNZHq6B/insta.png",
                    "https://www.instagram.com/a.divine_story",
                    w! / 15,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

socialWidget(String imagePath, String socialLink, double imageWidth) {
  return InkWell(
    onTap: () async {
      Uri url = Uri.parse(socialLink);
      try {
        await launchUrl(url);
      } catch (e) {
        print('Could not launch $url: $e');
      }
    },
    child: Image.network(
      imagePath,
      width: imageWidth,
    ),
  );
}
