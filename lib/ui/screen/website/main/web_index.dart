import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hovering/hovering.dart';
import 'package:resume/framework/data_provider/mouse_hover/riverpod_provider.dart';
import 'package:resume/framework/data_provider/on_hover_controller.dart';
import 'package:resume/ui/utils/app_theme.dart';
import 'package:resume/ui/utils/const.dart';
import 'package:resume/ui/utils/images.dart';
import 'package:resume/ui/utils/responsive.dart';
import 'package:resume/ui/utils/strings.dart';
import 'package:resume/ui/utils/widgets/large_txt.dart';
import 'package:resume/ui/utils/widgets/mouse_hover.dart';

class IndexWebsite extends StatelessWidget {
  const IndexWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constant().colorGreyShadow,
        onPressed: () {},
        child: const Icon(Icons.light_mode),
      ),
      backgroundColor: Constant().colorBlackWhite,
      body: Stack(
        children: [
          ClipPath(
              clipper: CliperOrange(),
              child: Container(
                height: height,
                width: 180.h * 2,
                color: Constant().colorPrimaryOrange,
              )),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Hero(
                  tag: profileTag,
                  child: Container(
                    height: height.h,
                    width: Responsive.isTab(context) ? 300.h : 380.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 30.0,
                        ),
                      ],
                      color: Constant().colorBlack,
                    ),
                    child: Image.asset(
                      AssetsImages.webProfile,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LargeTxt(
                      txt: AllTextStrings.txtRahulNai,
                      color: Constant().colorPrimaryOrange,
                    ),
                    LargeTxt(
                      txt: AllTextStrings.txtDesignation,
                      color: Constant().colorWhite,
                    ),
                    LargeTxt(
                      txt: AllTextStrings.txtRahulNai,
                      color: Constant().colorPrimaryOrange,
                    ),
                  ],
                ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   children: [
                //     // Container(
                //     //   height: 50.h,
                //     //   width: 50.h,
                //     //   decoration: BoxDecoration(
                //     //     borderRadius: BorderRadius.circular(50),
                //     //     color: Colors.orangeAccent,
                //     //   ),
                //     //   child: const Icon(Icons.home),
                //     // ),

                //     // OnHover(builder: (isHovered){
                //     //   final floatingBtn = isHovered ? Colors.red : Colors.orangeAccent;
                //     //   return
                //     //   Container(
                //     //     height: 50.h,
                //     //     width: 50.h,
                //     //     decoration: BoxDecoration(
                //     //       borderRadius: BorderRadius.circular(50),
                //     //       color: floatingBtn,
                //     //     ),
                //     //     child: Icon(Icons.home),
                //     //   );
                //     // }),
                //     // AnimatedContainer(
                //     //   duration: const Duration(milliseconds: 100),
                //     //   height: 50.h,
                //     //   width: 100.h,
                //     //   decoration: BoxDecoration(
                //     //     borderRadius: BorderRadius.circular(50),
                //     //     color: Colors.orangeAccent,
                //     //   ),
                //     //   child: Center(
                //     //     child: Padding(
                //     //       padding: const EdgeInsets.all(10),
                //     //       child: Row(
                //     //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     //         children: const [
                //     //           Text(
                //     //             "HOME",
                //     //             style: TextStyle(
                //     //               fontWeight: FontWeight.bold,
                //     //               color: Colors.white,
                //     //             ),
                //     //           ),
                //     //           Icon(
                //     //             Icons.home,
                //     //             color: Colors.white,
                //     //           ),
                //     //         ],
                //     //       ),
                //     //     ),
                //     //   ),
                //     // ),
                //     // const MyFloatingBtn(),
                //     // const MyFloatingBtn(),

                //     // FloatingActionButton(
                //     //   onPressed: () {},
                //     //   child: Icon(Icons.mail),
                //     // ),
                //     // FloatingActionButton.extended(
                //     //   onPressed: () {},
                //     //   icon: Icon(Icons.mail),
                //     //   label: Text("Mail"),
                //     // ),
                //     // FloatingActionButton(onPressed: (){},child: Icon(Icons.mail),),
                //     // FloatingActionButton(onPressed: (){},child: Icon(Icons.mail),),
                //     // FloatingActionButton(onPressed: (){},child: Icon(Icons.mail),),
                //   ],
                // )/
                Expanded(
                  child: getButtonList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  getButtonList() {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final onHoverWatch = ref.watch(onHoverProvider);
            return HoverWidget(
              onHover: (event) {
                onHoverWatch.updateIsHoveredList(index, true);
                print("OnHovered${onHoverWatch.isHoveredList}");
              },
              hoverChild: InkWell(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "HOME",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              child: const Icon(
                Icons.home,
                color: Colors.white,
              ),
            );
          },
        );
      }),
      // itemBuilder: const MyFloatingBtn(),
    );
  }
}

class CliperOrange extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}

class MyFloatingBtn extends StatelessWidget {
  const MyFloatingBtn(
      {super.key, required this.isHovered, required this.index});

  final List<bool> isHovered;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: isHovered[index]
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "HOME",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ],
              )
            : const Icon(
                Icons.home,
                color: Colors.white,
              ),
      ),
    );
  }
}
