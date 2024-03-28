import 'package:flutter/material.dart';
import 'package:web_app_example/app/utils/constants.dart';
import 'package:web_app_example/ui/components/containers/cont_1.dart';
import 'package:web_app_example/ui/components/containers/cont_2.dart';
import 'package:web_app_example/ui/components/containers/cont_3.dart';
import 'package:web_app_example/ui/components/containers/cont_4.dart';
import 'package:web_app_example/ui/components/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: const NavBar(),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          controller: _scrollController,
          child: SizedBox(
            // margin: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              children: [
                const IntroContainer(),
                const SizedBox(height: 50),
                AboutContainer(
                  key: container2Key,
                ),
                const SizedBox(height: 50),
                ProjectsContainer(
                  key: container3Key,
                ),
                const SizedBox(height: 50),
                SocialsContainer(
                  key: container4Key,
                ),
                const SizedBox(height: 50),
                Image.network(
                  "https://i.ibb.co/Lr1Y8mV/bwf.png",
                  height: 50,
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
