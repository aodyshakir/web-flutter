import 'package:flutter/material.dart';
import 'package:webflutter/ui/shared/center_widget.dart';

import '../../shared/nav_bar.dart';


class SupportPage extends StatelessWidget {
  static const routeName = '/SuppotPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Column(
          children: <Widget>[
            NavBarWidget(),
            CenterdedWidget(
              child: Container(
                child: const Text('Support'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
