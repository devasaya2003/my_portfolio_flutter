import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_example/app/utils/constants.dart';

// ================== Projects ==================

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
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
    return const SizedBox(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Projects",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 20),
        ProjectWidgetTablet(
            projectUrl: "https://github.com/devasaya2003/Quick-News",
            projecttitle: 'Quick News',
            projectTechnology: 'Made with Flutter',
            projectdescription:
                'A news app that provides you with the latest headlines of your country!'),
        SizedBox(height: 30),
        ProjectWidgetTablet(
            projectUrl: "https://github.com/devasaya2003/todoey",
            projecttitle: 'Todoey',
            projectTechnology: 'Made with Flutter, Hive and Provider',
            projectdescription:
                'A simple todo app that helps you to keep track of your tasks!'),
        SizedBox(height: 30),
        ProjectWidgetTablet(
            projectUrl:
                "https://github.com/devasaya2003/Road-Accident-Analysis",
            projecttitle: 'Road Accident Data Analysis',
            projectTechnology: 'Made with Python, Pandas and Matplotlib',
            projectdescription:
                'A data analysis project that helps you to visualise the frequency of road accidents in India!'),
        SizedBox(height: 30),
        ProjectWidgetTablet(
            projectUrl: "https://github.com/devasaya2003/Cat-vs-Dog-CNN",
            projecttitle: 'Cat Vs. Dog Classifier',
            projectTechnology: 'Made with Python, Tensorflow and Keras',
            projectdescription:
                'A convulutional neural network that classifies whether the image is of a cat or a dog!'),
      ],
    ));
  }

  // ================== Tablet ==================

  Widget tabletContainer3() {
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
                Text("My Projects",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 40),
            ProjectWidgetTablet(
                projectUrl: "https://github.com/devasaya2003/Quick-News",
                projecttitle: 'Quick News',
                projectTechnology: 'Made with Flutter',
                projectdescription:
                    'A news app that provides you with the latest headlines of your country!'),
            SizedBox(height: 30),
            ProjectWidgetTablet(
                projectUrl: "https://github.com/devasaya2003/todoey",
                projecttitle: 'Todoey',
                projectTechnology: 'Made with Flutter, Hive and Provider',
                projectdescription:
                    'A simple todo app that helps you to keep track of your tasks!'),
            SizedBox(height: 30),
            ProjectWidgetTablet(
                projectUrl:
                    "https://github.com/devasaya2003/Road-Accident-Analysis",
                projecttitle: 'Road Accident Data Analysis',
                projectTechnology: 'Made with Python, Pandas and Matplotlib',
                projectdescription:
                    'A data analysis project that helps you to visualise the frequency of road accidents in India!'),
            SizedBox(height: 30),
            ProjectWidgetTablet(
                projectUrl: "https://github.com/devasaya2003/Cat-vs-Dog-CNN",
                projecttitle: 'Cat Vs. Dog Classifier',
                projectTechnology: 'Made with Python, Tensorflow and Keras',
                projectdescription:
                    'A convulutional neural network that classifies whether the image is of a cat or a dog!'),
          ],
        ));
  }

  // ================== Desktop ==================

  Widget desktopContainer3() {
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
                Text("My Projects",
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 40),
            ProjectWidget(
                projectUrl: "https://github.com/devasaya2003/Quick-News",
                projecttitle: 'Quick News',
                projectTechnology: 'Made with Flutter',
                projectdescription:
                    'A news app that provides you with the latest headlines of your country!'),
            SizedBox(height: 30),
            ProjectWidget(
                projectUrl: "https://github.com/devasaya2003/todoey",
                projecttitle: 'Todoey',
                projectTechnology: 'Made with Flutter, Hive and Provider',
                projectdescription:
                    'A simple todo app that helps you to keep track of your tasks!'),
            SizedBox(height: 30),
            ProjectWidget(
                projectUrl:
                    "https://github.com/devasaya2003/Road-Accident-Analysis",
                projecttitle: 'Road Accident Data Analysis',
                projectTechnology: 'Made with Python, Pandas and Matplotlib',
                projectdescription:
                    'A data analysis project that helps you to visualise the frequency of road accidents in India!'),
            SizedBox(height: 30),
            ProjectWidget(
                projectUrl: "https://github.com/devasaya2003/Cat-vs-Dog-CNN",
                projecttitle: 'Cat Vs. Dog Classifier',
                projectTechnology: 'Made with Python, Tensorflow and Keras',
                projectdescription:
                    'A convulutional neural network that classifies whether the image is of a cat or a dog!'),
          ],
        ));
  }
}

class ProjectWidget extends StatelessWidget {
  final String projecttitle;
  final String projectTechnology;
  final String projectdescription;
  final String projectUrl;

  const ProjectWidget({
    super.key,
    required this.projecttitle,
    required this.projectTechnology,
    required this.projectdescription,
    required this.projectUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.grey.shade900),
        backgroundColor: MaterialStateProperty.all(
          Colors.black12,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
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
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
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
}

class ProjectWidgetTablet extends StatelessWidget {
  final String projecttitle;
  final String projectTechnology;
  final String projectdescription;
  final String projectUrl;

  const ProjectWidgetTablet({
    super.key,
    required this.projecttitle,
    required this.projectTechnology,
    required this.projectdescription,
    required this.projectUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.grey.shade900),
        backgroundColor: MaterialStateProperty.all(
          Colors.black12,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
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
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
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
}
