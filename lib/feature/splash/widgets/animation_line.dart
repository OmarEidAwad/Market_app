import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimationLine extends StatefulWidget {
  @override
  _AnimationLineState createState() => _AnimationLineState();
}

class _AnimationLineState extends State<AnimationLine>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 999),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AnimatedBuilder(
        animation: _controller,

        builder: (_, __) {
          return ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [_controller.value, 2.0, 4.0],
                colors: [Colors.transparent, const Color.fromARGB(255, 37, 37, 37), const Color.fromARGB(255, 30, 30, 30)],
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstIn,
            child: SvgPicture.asset(
              'assets/logo/line.svg',
              color: const Color.fromARGB(221, 70, 142, 72),
            ),
          );
        },
      ),
    );
  }
}
