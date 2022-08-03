import 'package:flutter/material.dart';
import 'package:webflutter/ui/pages/support_page/support_page.dart';
import '../pages/about_page/about_page.dart';
import '../pages/home_page/home_page.dart';
import '../pages/learn_page/learn_page.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      height: 50,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              width: 100,
              height: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.jpg'),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              
              children: <Widget>[
                TextButton(
                  
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomePage.routeName);
                  },
                  child: const Text('Home'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AboutPage.routeName);
                  },
                  child: const Text('About'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LearnPage.routeName);
                  },
                  child: const Text('Learn'),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(SupportPage.routeName);
                    },
                    child: const Text('Support')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
