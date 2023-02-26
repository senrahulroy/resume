import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume/ui/utils/app_theme.dart';
import 'package:resume/ui/utils/images.dart';
import 'package:resume/ui/utils/lottie_animation.dart';
import 'package:lottie/lottie.dart';
import 'package:resume/ui/utils/responsive.dart';
import 'package:resume/ui/utils/widgets/hero_profile.dart';
import 'package:resume/ui/utils/widgets/ripple_splash.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(milliseconds: 300 * 10),
        () {
          Navigator.pushNamedAndRemoveUntil(
              context, "/Bio", (Route<dynamic>   route) => false);
      }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant().colorBlack,
      body: Responsive(
        mobView: HeroProfileWithRipple(assetImage: AssetImage(AssetsImages.mobProfile),),
        tabView: HeroProfileWithRipple(assetImage: AssetImage(AssetsImages.webProfile),),
        desView: HeroProfileWithRipple(assetImage: AssetImage(AssetsImages.webProfile ),),
        ),
      );
  }
}

