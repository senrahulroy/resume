import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/framework/data_provider/mouse_hover/mouse_hover_controller.dart';

/// This is Mouse Hover Provider
final mouseHoverProvider = ChangeNotifierProvider(
      (ref) => GetMouseHoverController(),
);