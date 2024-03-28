import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_example/app/utils/constants.dart';
import 'package:web_app_example/app/utils/styles.dart';
import 'package:web_app_example/constants/constants.dart';

// ================== Projects ==================

class ProjectsContainer extends StatelessWidget {
  const ProjectsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer3(),
      tablet: (BuildContext context) => tabletContainer3(),
      desktop: (BuildContext context) => desktopContainer3(),
    );
  }

  // ================== Mobile ==================
  Widget mobileContainer3() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      height: h! / 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My Projects",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
              itemCount: projectsList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    projectWidgetTablet(
                      projectsList[index]['url']!,
                      projectsList[index]['title']!,
                      projectsList[index]['description']!,
                      projectsList[index]['detail']!,
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // ================== Tablet ==================
  Widget tabletContainer3() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      height: h! / 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My Projects",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
              itemCount: projectsList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    projectWidgetTablet(
                      projectsList[index]['url']!,
                      projectsList[index]['title']!,
                      projectsList[index]['description']!,
                      projectsList[index]['detail']!,
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // ================== Desktop ==================
  Widget desktopContainer3() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 6),
      height: h! / 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My Projects",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
              itemCount: projectsList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    projectWidget(
                      projectsList[index]['url']!,
                      projectsList[index]['title']!,
                      projectsList[index]['description']!,
                      projectsList[index]['detail']!,
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

projectWidget(String projectUrl, String projecttitle, String projectTechnology,
    String projectdescription) {
  return ElevatedButton(
    style: borderedButtonStyle,
    onPressed: () async {
      Uri url = Uri.parse(projectUrl);
      try {
        await launchUrl(url);
      } catch (e) {
        print('Could not launch $url: $e');
      }
    },
    child: Container(
      width: w! / 1.7,
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            projecttitle,
            style: const TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            projectTechnology,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            projectdescription,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 20),
          const Text(
            'Tap the card to check out the github repo!',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    ),
  );
}

projectWidgetTablet(String projectUrl, String projecttitle,
    String projectTechnology, String projectdescription) {
  return ElevatedButton(
    style: borderedButtonStyle,
    onPressed: () async {
      Uri url = Uri.parse(projectUrl);
      try {
        await launchUrl(url);
      } catch (e) {
        print('Could not launch $url: $e');
      }
    },
    child: Container(
      width: w! / 1.7,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            projecttitle,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            projectTechnology,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 10),
          Text(
            projectdescription,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Text(
            'Tap the card to check out the github repo!',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    ),
  );
}
