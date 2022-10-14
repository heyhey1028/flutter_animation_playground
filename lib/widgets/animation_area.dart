import 'package:flutter/material.dart';

class AnimationArea extends StatelessWidget {
  const AnimationArea({
    super.key,
    this.title = '',
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Stack(
        children: [
          Center(
            child: Text(title),
          ),
          child,
        ],
      ),
    );
  }
}
