import 'package:flutter/material.dart';

class AnimationArea extends StatelessWidget {
  const AnimationArea({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Stack(
        children: [child],
      ),
    );
  }
}
