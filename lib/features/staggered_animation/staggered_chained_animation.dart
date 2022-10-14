import 'package:animation_playground/constants/dash_bird.dart';
import 'package:animation_playground/widgets/animation_area.dart';
import 'package:flutter/material.dart';

import '../../constants/sample_page.dart';
import '../../widgets/control_container.dart';

class StaggeredChainedAnimationSample extends StatefulWidget {
  const StaggeredChainedAnimationSample({super.key});

  @override
  State<StaggeredChainedAnimationSample> createState() =>
      _StaggeredChainedAnimationSampleState();
}

// 1. define StatefulWidget with SingleTickerProviderStateMixin
class _StaggeredChainedAnimationSampleState
    extends State<StaggeredChainedAnimationSample>
    with SingleTickerProviderStateMixin {
  // 2. define AnimationController & Tween & Animation
  late AnimationController _controller;

  @override
  void initState() {
    // 3. initialize controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimationArea(
          title: SamplePage.staggeredChainedAnimation.title,
          child: AnimatedDashBirds(controller: _controller),
        ),
        ControlContainer(
          controller: _controller,
          sample: SamplePage.staggeredChainedAnimation,
        ),
      ],
    );
  }
}

class AnimatedDashBirds extends AnimatedWidget {
  const AnimatedDashBirds({
    super.key,
    required AnimationController controller,
  })  : _controller = controller,
        super(
          listenable: controller,
        );

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    final birdOneAnimation = Tween<Offset>(
      begin: const Offset(-1000, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0,
          0.3,
          // curve: Curves.fastLinearToSlowEaseIn,
        ),
      ),
    );
    final birdTwoAnimation = Tween<Offset>(
      begin: const Offset(-1000, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.1,
          0.4,
          // curve: Curves.fastLinearToSlowEaseIn,
        ),
      ),
    );
    final birdThreeAnimation = Tween<Offset>(
      begin: const Offset(-1000, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.2,
          0.5,
          // curve: Curves.fastLinearToSlowEaseIn,
        ),
      ),
    );
    final birdFourAnimation = Tween<Offset>(
      begin: const Offset(-1000, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.3,
          0.6,
          // curve: Curves.fastLinearToSlowEaseIn,
        ),
      ),
    );
    final birdFiveAnimation = Tween<Offset>(
      begin: const Offset(-1000, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.4,
          0.7,
          // curve: Curves.fastLinearToSlowEaseIn,
        ),
      ),
    );

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Transform.translate(
            offset: birdOneAnimation.value,
            child: Image.asset(
              DashBird.coffee.path,
              width: 200,
              height: 120,
            ),
          ),
          Transform.translate(
            offset: birdTwoAnimation.value,
            child: Image.asset(
              DashBird.nightcap.path,
              width: 200,
              height: 120,
            ),
          ),
          Transform.translate(
            offset: birdThreeAnimation.value,
            child: Image.asset(
              DashBird.glasses.path,
              width: 200,
              height: 120,
            ),
          ),
          Transform.translate(
            offset: birdFourAnimation.value,
            child: Image.asset(
              DashBird.rockstar.path,
              width: 200,
              height: 120,
            ),
          ),
          Transform.translate(
            offset: birdFiveAnimation.value,
            child: Image.asset(
              DashBird.superdash.path,
              width: 200,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }

  // Animation<Offset> _getAnimation(
  //   AnimationController controller,
  //   double begin,
  //   double end,
  // ) {
  //   return Tween<Offset>(
  //     begin: const Offset(-1000, 0),
  //     end: Offset.zero,
  //   ).animate(
  //     CurvedAnimation(
  //       parent: controller,
  //       curve: Interval(
  //         begin,
  //         end,
  //         curve: Curves.fastLinearToSlowEaseIn,
  //       ),
  //     ),
  //   );
  // }
}
