import 'package:animation_playground/features/curved_animation/with_curve_tween.dart';
import 'package:animation_playground/features/curved_animation/with_curved_animation.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/widgets/app_scaffold.dart';
import '../../widgets/bordered_text.dart';

final implicitlyAnimatedWidgetsPageProvider = StateProvider((ref) => 0.0);

const pages = <Widget>[
  WithCurvedAnimation(),
  WithCurveTween(),
];

class ImplicitlyAnimatedWidgetsScreen extends HookConsumerWidget {
  const ImplicitlyAnimatedWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = usePageController();
    return AppScaffold(
      title: const BorderedText(
        text: 'IMPLICITLY ANIMATED WIDGETS',
        textColor: Colors.white,
        borderColor: Colors.teal,
        fontSize: 15,
        strokeWidth: 5,
      ),
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 8),
        child: Consumer(
          builder: (context, ref, _) => DotsIndicator(
            dotsCount: pages.length,
            position: ref.watch(implicitlyAnimatedWidgetsPageProvider),
          ),
        ),
      ),
      color: Colors.green,
      body: PageView(
        controller: controller,
        onPageChanged: (value) =>
            ref.read(implicitlyAnimatedWidgetsPageProvider.notifier).update(
                  (state) => value.toDouble(),
                ),
        children: pages,
      ),
    );
  }
}
