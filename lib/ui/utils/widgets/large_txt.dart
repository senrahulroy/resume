import 'package:flutter/material.dart';
import 'package:resume/ui/utils/app_theme.dart';

class LargeTxt extends StatelessWidget {

  final String txt;
  final Color color;

  const LargeTxt({Key? key, required this.txt, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(txt,
      style: TextStyles.txtLargeBold(color),
      );
  }
}
