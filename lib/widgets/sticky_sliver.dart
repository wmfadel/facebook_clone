import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StickySliver extends SingleChildRenderObjectWidget {
  const StickySliver({Widget? child, Key? key}) : super(child: child, key: key);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderStickySliver();
  }
}

class RenderStickySliver extends RenderSliverSingleBoxAdapter {
  RenderStickySliver({RenderBox? child}) : super(child: child);

  @override
  void performLayout() {
    geometry = SliverGeometry.zero;

    child?.layout(
      constraints.asBoxConstraints(),
      parentUsesSize: true,
    );

    double childExtent = child?.size.height ?? 0;
    debugPrint('scroll ${constraints.scrollOffset}');
    geometry = SliverGeometry(
      paintExtent: childExtent,
      maxPaintExtent: childExtent,
      paintOrigin: constraints.scrollOffset < 50
          ? 0 //constraints.scrollOffset
          : constraints.scrollOffset - 55,
    );

    setChildParentData(child!, constraints, geometry!);
  }
}
