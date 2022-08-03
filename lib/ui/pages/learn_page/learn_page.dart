import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webflutter/ui/shared/center_widget.dart';

import '../../shared/nav_bar.dart';

class LearnPage extends StatelessWidget {
  static const routeName = '/learn';
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
              child: Text('Learn Page'),
            ),
          ],
        )),
        tablet: Container(
          child: Column(
            children: <Widget>[
              NavBarWidget(),
              CenterdedWidget(
                child: Text('Learn Page'),
              ),
            ],
          ),
        ),
        desktop: Container(
          child: Column(
            children: <Widget>[
              NavBarWidget(),
              CenterdedWidget(
                child: Text('Learn Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
