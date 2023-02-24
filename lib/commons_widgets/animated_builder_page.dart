import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedBuilderPage extends StatefulWidget {
  const AnimatedBuilderPage({super.key});

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Builder'),
      ),
      body: SafeArea(
        child: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller.value * 0.9 * math.pi,
                child: child,
              );
            },
            child: const Icon(
              Icons.rocket,
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}
