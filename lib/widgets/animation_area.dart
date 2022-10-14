import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      padding: const EdgeInsets.symmetric(
        vertical: 100,
        horizontal: 4,
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              title,
              style: GoogleFonts.anton(
                color: Colors.grey[700]!.withOpacity(0.5),
                fontSize: 22,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
