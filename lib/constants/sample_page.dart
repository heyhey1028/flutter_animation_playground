enum SamplePage {
  basicWithAnimatedWidget(
    title: 'With AnimatedWidget',
    codePath: 'assets/codes/basic_with_animated_widget.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/basic_animation/basic_with_animated_widget.dart',
  ),
  basicWithAniamatedBuilder(
    title: 'With Animated Builder',
    codePath: 'assets/codes/basic_with_animated_builder.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/basic_animation/basic_with_animated_builder.dart',
  ),
  basicWithTransition(
    title: 'With Transition',
    codePath: 'assets/codes/basic_with_transition.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/basic_animation/basic_with_transition.dart',
  ),
  curveWithCurvedAnimation(
    title: 'With CurvedAnimation',
    codePath: 'assets/codes/curve_with_curved_animation.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/curved_animation/with_curved_animation.dart',
  ),
  curveWithCurveTween(
    title: 'With CurveTween',
    codePath: 'assets/codes/curve_with_curve_tween.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/curved_animation/with_cruve_tween.dart',
  ),
  multipleWithAnimatedWidget(
    title: 'With AnimatedWidget',
    codePath: 'assets/codes/multiple_with_animated_widget.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/multiple_effects/multiple_with_animated_widget.dart',
  ),
  multipleWithAnimatedBuilder(
    title: 'With Animation Builder',
    codePath: 'assets/codes/multiple_with_animation_builder.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/multiple_effects/multiple_with_animation_builder.dart',
  ),
  multipleWithImplicitAnimation(
    title: 'With Implicit Animations',
    codePath: 'assets/codes/multiple_with_implicit_animation.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/multiple_effects/multiple_with_implicit_animation.dart',
  ),
  multipleWithTransition(
    title: 'With Transitions',
    codePath: 'assets/codes/multiple_with_transition.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/multiple_effects/multiple_with_transition.dart',
  ),
  chainedAnimation(
    title: 'Chained Animation',
    codePath: 'assets/codes/chained_animation.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/chain_animation/chained_animation.dart',
  ),
  sequencedAnimation(
    title: 'Sequenced Animation',
    codePath: 'assets/codes/sequenced_animation.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/chain_animation/sequenced_animation.dart',
  ),
  chainedSequencedAnimation(
    title: 'Chained Sequenced Animation',
    codePath: 'assets/codes/chained_sequenced_animation.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/chain_animation/chained_sequenced_animation.dart',
  ),
  staggeredAnimation(
    title: 'Simple staggered animations',
    codePath: 'assets/codes/staggered_animation.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/staggered_animation/staggered_animation.dart',
  ),
  staggeredSequencedAnimation(
    title: 'Staggered and Sequenced animations',
    codePath: 'assets/codes/staggered_sequenced_animation.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/staggered_animation/staggered_animation.dart',
  ),
  staggeredMultipleEffectAnimation(
    title: 'Staggered Multiple Effect animations',
    codePath: 'assets/codes/staggered_multiple_effect_animation.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/staggered_animation/staggered_animation.dart',
  ),
  staggeredChainedAnimation(
    title: 'Staggered Chained animations',
    codePath: 'assets/codes/staggered_chained_animation.txt',
    url:
        'https://github.com/heyhey1028/flutter-toybox/blob/feature/8_animation_playground/samples/animation_playground/lib/features/staggered_animation/staggered_animation.dart',
  ),
  ;

  const SamplePage({
    required this.title,
    required this.codePath,
    required this.url,
  });

  final String title;
  final String codePath;
  final String url;
}
