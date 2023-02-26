import 'package:flutter/material.dart';
import 'package:resume/ui/utils/app_theme.dart';
import 'package:resume/ui/utils/const.dart';
import 'package:resume/ui/utils/widgets/ripple_splash.dart';

class HeroProfileWithRipple extends StatelessWidget {


  final AssetImage assetImage;

  const HeroProfileWithRipple({Key? key,
    required this.assetImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: profileTag,
        child: RippleAnimPic(
          color: Constant().colorPrimaryOrange,
          minRadius: 75,
          ripplesCount: 6,
          repeat: true,
          delay: const Duration(milliseconds: 300),
          duration: const Duration(milliseconds: 6 * 300),
          cirbgImage: assetImage,
        ),
      ),
    );
  }
}
