import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class RippleAnimPic extends StatelessWidget {

   final Color color;
   final double minRadius;
   final int ripplesCount;
   final bool repeat;
   final Duration delay;
   final Duration duration;
   final AssetImage cirbgImage;

  const RippleAnimPic({Key? key,
    required this.color,
    required this.minRadius,
    required this.ripplesCount,
    required this.repeat,
    required this.delay,
    required this.cirbgImage,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RippleAnimation(
      color: color,
      delay: delay,
      repeat: repeat,
      minRadius: minRadius,
      ripplesCount: ripplesCount,
      duration: duration,
      child: CircleAvatar(
        radius: 60,
        backgroundImage: cirbgImage,
        // child: Image.asset(AssetsImages.mobProfile),
      ),
    );
  }
}
