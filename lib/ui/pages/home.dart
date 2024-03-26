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
                const Container1(),
                const SizedBox(height: 50),
                Container2(
                  key: container2Key,
                ),
                const SizedBox(height: 50),
                Container3(
                  key: container3Key,
                ),
                const SizedBox(height: 50),
                // Container4(),
                // SizedBox(height: 50),
                Container4(
                  key: container4Key,
                ),
                const SizedBox(height: 50),
                Image.asset(
                  "images/bwf.png",
                  width: 100,
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
