import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'ui/pages/about_page/about_page.dart';
import 'ui/pages/home_page/home_page.dart';
import 'ui/pages/learn_page/learn_page.dart';
import 'ui/pages/support_page/support_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        AboutPage.routeName: (_) => AboutPage(),
        LearnPage.routeName: (_) => LearnPage(),
        SupportPage.routeName:(_)=> SupportPage(),
      },
    );
  }
}





