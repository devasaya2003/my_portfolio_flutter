import 'package:flutter/material.dart';
import 'package:web_app_example/app/utils/constants.dart';
import 'package:web_app_example/ui/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   fontFamily: 'HindSiliguri',
      //   primaryColor: AppColors.primary,
      //   brightness: Brightness.light
      // ),
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}