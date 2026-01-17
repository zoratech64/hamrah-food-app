import 'package:flutter/material.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/core/widgets/animations/delay_tween.dart';

class CircleProgressIndicator extends StatefulWidget {
  const CircleProgressIndicator({super.key, this.color, this.size});

  final Color? color;
  final double? size;

  @override
  State<CircleProgressIndicator> createState() =>
      _CircleProgressIndicatorState();
}

class _CircleProgressIndicatorState extends State<CircleProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final double size;
  final int _itemCount = 12;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    )..repeat();

    size = widget.size ?? SizeConstants.instance.iconLarge;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: Size.square(size),
        child: Stack(
          children: List<Widget>.generate(_itemCount, (int index) {
            double position = size * 0.5;

            return Positioned.fill(
              left: position,
              top: position,
              child: Transform(
                transform: Matrix4.rotationZ(30.0 * index * 0.0174533),
                child: Align(
                  child: ScaleTransition(
                    scale: DelayTween(
                      begin: 0.0,
                      end: 1.0,
                      delay: index / _itemCount,
                    ).animate(_controller),
                    child: SizedBox.fromSize(
                      size: Size.square(size * 0.15),
                      child: _itemBuilder(index),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) => DecoratedBox(
    decoration: BoxDecoration(
      color: widget.color ?? Theme.of(context).iconTheme.color,
      shape: BoxShape.circle,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
