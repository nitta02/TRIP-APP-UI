// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class PageControll extends StatelessWidget {
  final double delay;
  const PageControll({
    Key? key,
    required this.delay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAnimationBuilder(
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(1, 1),
          child: child,
        );
      },
      tween: Tween(begin: 0, end: 1.0),
      duration: Duration(
        milliseconds: (500),
      ),
    );
  }
}
