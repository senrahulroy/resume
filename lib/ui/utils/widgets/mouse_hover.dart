import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/framework/data_provider/mouse_hover/riverpod_provider.dart';

class OnHover extends ConsumerWidget {

  final Widget Function(bool isHovered) builder;

    // final Widget child;
  const OnHover({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final mouseWatch = ref.watch(mouseHoverProvider);
    final isHovered = mouseWatch.isHovered;
    final hovered = Matrix4.identity()..translate(0,-10,0);
    final transform = mouseWatch.isHovered ? hovered : Matrix4.identity();

    return  MouseRegion(
      onEnter: (_)=> mouseWatch.onEntered(true),
      onExit: (_)=> mouseWatch.onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: transform,
        child: builder(isHovered),
      ),
    );
  }
}
