import 'package:flutter/material.dart';

///
/// An animated widget to move the FAB from base position to its end position
/// according to its position in the list and
/// the changed value from animation controller
/// [floatButton] the current FAB and [translateValue] is a double value.
/// and we do the transformation on the OY axis.
class TransformFloatActionButton extends StatelessWidget {
  final Widget floatButton;
  final double translateValue;

  TransformFloatActionButton({
    required this.floatButton,
    required this.translateValue,
  }) : super(
          key: ObjectKey(floatButton),
        );

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(
        0.0,
        translateValue,
        0.0,
      ),
      child: floatButton,
    );
  }
}
