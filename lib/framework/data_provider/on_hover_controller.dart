import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onHoverProvider = ChangeNotifierProvider(
  (ref) => OnHoverController(),
);

class OnHoverController extends ChangeNotifier {
  List<bool> isHoveredList = [false, false, false, false, false];

  updateIsHoveredList(int index, bool val) {
    isHoveredList = [false, false, false, false, false];
    isHoveredList[index] = val;
    notifyListeners();
  }
}
