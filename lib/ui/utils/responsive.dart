import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobView;
  final Widget tabView;
  final Widget desView;

  const Responsive({
    Key? key,
    required this.mobView,
    required this.tabView,
    required this.desView,
  }) : super(key: key);
// Here i mention Screen size for our project you can customize as per want
// Here isMob for Mobile , isTab for Tablet, isDes for Desktop/Web
  static bool isMob(context){
    var isMob = MediaQuery.of(context).size.width < 650.0;
    return isMob;
  }
  static bool isTab(context){
    var isTab= MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 650;
    return isTab;
  }
  static bool isDes(context){
    var isDes =  MediaQuery.of(context).size.width >= 1100;
    return isDes;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth >=1100 ){
          return desView;
        }
        else if(constraints.maxWidth >= 650){
          return tabView;
        }
        else {
          return mobView;
        }
      },
    );
  }
}
