import 'package:flutter/material.dart';

class AnimatedBlurCircle extends StatefulWidget {
  final Color color;
  final double size;
  final double offset; // How far to animate vertically

  const AnimatedBlurCircle({
    super.key,
    required this.color,
    required this.size,
    this.offset = 30.0,
  });

  @override
  State<AnimatedBlurCircle> createState() => _AnimatedBlurCircleState();
}

class _AnimatedBlurCircleState extends State<AnimatedBlurCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: -widget.offset,
      end: widget.offset,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value, _animation.value/2),
          child: child,
        );
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [widget.color.withAlpha(80), widget.color.withAlpha(0)],
          ),
        ),
      ),
    );
  }
}
