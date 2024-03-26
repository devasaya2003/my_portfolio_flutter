import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_example/app/utils/constants.dart';

// ================== Socials ==================

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
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
        // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // color: AppColors.primary,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Socials",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialWidget(
                    imagePath: 'images/gmail.png',
                    socialLink: "mailto:devasyasingh2000@gmail.com",
                  ),
                  SocialWidget(
                    imagePath: 'images/github.png',
                    socialLink: "https://github.com/devasaya2003",
                  ),
                  SocialWidget(
                    imagePath: 'images/twitter.png',
                    socialLink: "https://twitter.com/devasaya2003",
                  ),
                  SocialWidget(
                    imagePath: 'images/linkedin.png',
                    socialLink: "https://www.linkedin.com/in/devasayasingh",
                  ),
                  SocialWidget(
                    imagePath: 'images/insta.png',
                    socialLink: "https://www.instagram.com/a.divine_story",
                  ),
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
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialWidget(
                    imagePath: 'images/gmail.png',
                    socialLink: "mailto:devasyasingh2000@gmail.com",
                  ),
                  SocialWidget(
                    imagePath: 'images/github.png',
                    socialLink: "https://github.com/devasaya2003",
                  ),
                  SocialWidget(
                    imagePath: 'images/twitter.png',
                    socialLink: "https://twitter.com/devasaya2003",
                  ),
                  SocialWidget(
                    imagePath: 'images/linkedin.png',
                    socialLink: "https://www.linkedin.com/in/devasayasingh",
                  ),
                  SocialWidget(
                    imagePath: 'images/insta.png',
                    socialLink: "https://www.instagram.com/a.divine_story",
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
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialWidget(
                    imagePath: 'images/gmail.png',
                    socialLink: "mailto:devasyasingh2000@gmail.com",
                  ),
                  SocialWidget(
                    imagePath: 'images/github.png',
                    socialLink: "https://github.com/devasaya2003",
                  ),
                  SocialWidget(
                    imagePath: 'images/twitter.png',
                    socialLink: "https://twitter.com/devasaya2003",
                  ),
                  SocialWidget(
                    imagePath: 'images/linkedin.png',
                    socialLink: "https://www.linkedin.com/in/devasayasingh",
                  ),
                  SocialWidget(
                    imagePath: 'images/insta.png',
                    socialLink: "https://www.instagram.com/a.divine_story",
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class SocialWidget extends StatelessWidget {
  final String imagePath;
  final String socialLink;

  const SocialWidget({
    super.key,
    required this.imagePath,
    required this.socialLink,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        Uri url = Uri.parse(socialLink);
        try {
          await launchUrl(url);
        } catch (e) {
          print('Could not launch $url: $e');
        }
      },
      child: Image.asset(
        imagePath,
        width: w! / 15,
      ),
    );
  }
}
