import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume/ui/screen/website/main/web_index.dart';
import 'package:resume/ui/utils/const.dart';
import 'package:resume/ui/utils/images.dart';
import 'package:resume/ui/utils/responsive.dart';

class RahulNai extends StatelessWidget {
  const RahulNai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobView: Hero(
        tag: profileTag,
        child: SizedBox(
            height: 200.h,
            width: 200.h,
            child: Image.asset(AssetsImages.mobProfile)
        ),
      ),
      tabView: IndexWebsite(),
      desView: IndexWebsite(),
      // Hero(
      //     tag: tag,
      //     child: Container(
      //         height: 200.h,
      //         width: 200.h,
      //         child: Image.asset(AssetsImages.webProfile)
      //     ),
      // ),
    );
    //   Scaffold(
    //   // backgroundColor: Colors.pink,
    //   body:
    // );
  }
}
