
import 'package:flutter/material.dart';
import 'package:webflutter/ui/shared/center_widget.dart';

import '../../shared/nav_bar.dart';

class LearnPage extends StatelessWidget {
  static const routeName = '/learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Column(
          children: <Widget>[
            NavBarWidget(),
            CenterdedWidget(
              child: Container(
                child: Text('Learn'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
