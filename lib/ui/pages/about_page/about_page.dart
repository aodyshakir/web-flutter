import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../shared/center_widget.dart';
import '../../shared/nav_bar.dart';
import '../home_page/main_content_desktop.dart';
import '../home_page/main_content_mobile.dart';
import '../home_page/main_content_tablet.dart';

class AboutPage extends StatelessWidget {
  static const routeName = '/about';
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
      appBar: deviceType == DeviceScreenType.mobile ? AppBar() : null,
      drawer: deviceType == DeviceScreenType.mobile
          ? Drawer(
              child: Container(color: Colors.red),
            )
          : null,
      body: ScreenTypeLayout(
        mobile: Container(
            child: Column(
          children: [
            CenterdedWidget(
              child: Text('about Page'),
            ),
          ],
        )),
        tablet: Container(
          child: Column(
            children: <Widget>[
              NavBarWidget(),
              CenterdedWidget(
                child: Text('about Page'),
              ),
            ],
          ),
        ),
        desktop: Container(
          child: Column(
            children: <Widget>[
              NavBarWidget(),
              CenterdedWidget(
                child: Text('about Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
