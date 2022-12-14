import 'package:flutter/material.dart';

class CenterdedWidget extends StatelessWidget {
  final Widget child;

  const CenterdedWidget({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 80, vertical: 60),
      decoration: BoxDecoration(color: Colors.grey[400]),
      child: ConstrainedBox(
          constraints:const BoxConstraints(maxWidth: 1200, minWidth: 900),
          child: child),
    );
  }
}
