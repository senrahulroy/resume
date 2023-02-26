
import 'package:flutter/cupertino.dart';

class GetMouseHoverController extends ChangeNotifier {
  bool isHovered = false;

  void onEntered(bool isHovered) {
    this.isHovered = isHovered;
    notifyListeners();
  }


}