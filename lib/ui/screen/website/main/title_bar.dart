import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume/ui/utils/app_theme.dart';

class NabBar extends StatelessWidget {
  /// final navBarMenu = { "home",  "Personal","About Us",};

  const NabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constant().infiniteSize,
      // height: 100.h,
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Personal"),
            ),
            Text("About us"),
            Text("EXPERIENCE"),
            Text("Skills"),
            Text("Contact Us"),
            NavbarItems(),
          ],
        ),
      ),
    );
  }
}

class NavbarItems extends StatelessWidget {
  const NavbarItems({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
      child: ElevatedButton(
        onPressed: (){},
        child: const Text('Home'),),
    );
  }
}

