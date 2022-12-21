import 'package:flutter/cupertino.dart';
import 'package:habit_tracker_flutter/ui/animations/animation_controller_state.dart';
import 'package:habit_tracker_flutter/ui/sliding_panel/sliding_panel.dart';

class SlidingPanelAnimator extends StatefulWidget {
  const SlidingPanelAnimator({
    Key? key,
    required this.direction,
    required this.child,
  }) : super(key: key);
  final SlideDirection direction;
  final Widget child;

  @override
  State<SlidingPanelAnimator> createState() =>
      _SlidingPanelAnimatorState(Duration(milliseconds: 200));
}

class _SlidingPanelAnimatorState
    extends AnimationControllerState<SlidingPanelAnimator> {
  _SlidingPanelAnimatorState(Duration duration) : super(duration);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
