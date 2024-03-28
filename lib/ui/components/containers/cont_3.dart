import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_example/app/utils/constants.dart';

// ================== Projects ==================

class ProjectsContainer extends StatefulWidget {
  const ProjectsContainer({super.key});

  @override
  State<ProjectsContainer> createState() => _ProjectsContainerState();
}

class _ProjectsContainerState extends State<ProjectsContainer> {
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
    return SizedBox(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Projects",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 20),
        projectWidgetTablet(
            "https://github.com/devasaya2003/Quick-News",
            'Quick News',
            'Made with Flutter',
            'A news app that provides you with the latest headlines of your country!'),
        const SizedBox(height: 30),
        projectWidgetTablet(
            "https://github.com/devasaya2003/todoey",
            'Todoey',
            'Made with Flutter, Hive and Provider',
            'A simple todo app that helps you to keep track of your tasks!'),
        const SizedBox(height: 30),
        projectWidgetTablet(
            "https://github.com/devasaya2003/Road-Accident-Analysis",
            'Road Accident Data Analysis',
            'Made with Python, Pandas and Matplotlib',
            'A data analysis project that helps you to visualise the frequency of road accidents in India!'),
        const SizedBox(height: 30),
        projectWidgetTablet(
            "https://github.com/devasaya2003/Cat-vs-Dog-CNN",
            'Cat Vs. Dog Classifier',
            'Made with Python, Tensorflow and Keras',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Projects",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 40),
            projectWidgetTablet(
                "https://github.com/devasaya2003/Quick-News",
                'Quick News',
                'Made with Flutter',
                'A news app that provides you with the latest headlines of your country!'),
            const SizedBox(height: 30),
            projectWidgetTablet(
                "https://github.com/devasaya2003/todoey",
                'Todoey',
                'Made with Flutter, Hive and Provider',
                'A simple todo app that helps you to keep track of your tasks!'),
            const SizedBox(height: 30),
            projectWidgetTablet(
                "https://github.com/devasaya2003/Road-Accident-Analysis",
                'Road Accident Data Analysis',
                'Made with Python, Pandas and Matplotlib',
                'A data analysis project that helps you to visualise the frequency of road accidents in India!'),
            const SizedBox(height: 30),
            projectWidgetTablet(
                "https://github.com/devasaya2003/Cat-vs-Dog-CNN",
                'Cat Vs. Dog Classifier',
                'Made with Python, Tensorflow and Keras',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Projects",
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 40),
            projectWidget(
                "https://github.com/devasaya2003/Quick-News",
                'Quick News',
                'Made with Flutter',
                'A news app that provides you with the latest headlines of your country!'),
            const SizedBox(height: 30),
            projectWidget(
                "https://github.com/devasaya2003/todoey",
                'Todoey',
                'Made with Flutter, Hive and Provider',
                'A simple todo app that helps you to keep track of your tasks!'),
            const SizedBox(height: 30),
            projectWidget(
                "https://github.com/devasaya2003/Road-Accident-Analysis",
                'Road Accident Data Analysis',
                'Made with Python, Pandas and Matplotlib',
                'A data analysis project that helps you to visualise the frequency of road accidents in India!'),
            const SizedBox(height: 30),
            projectWidget(
                "https://github.com/devasaya2003/Cat-vs-Dog-CNN",
                'Cat Vs. Dog Classifier',
                'Made with Python, Tensorflow and Keras',
                'A convulutional neural network that classifies whether the image is of a cat or a dog!'),
          ],
        ));
  }
}

projectWidget(String projectUrl, String projecttitle, String projectTechnology,
    String projectdescription) {
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
