import 'package:flutter/material.dart';


import '../../shared/center_widget.dart';
import '../../shared/nav_bar.dart';

class AboutPage extends StatelessWidget {
  static const routeName = '/about';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            NavBarWidget(),
            CenterdedWidget(
              child: Container(
                child: Text('about'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
