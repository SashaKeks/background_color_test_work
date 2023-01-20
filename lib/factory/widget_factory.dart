import 'package:background_color_test_work/main.dart';
import 'package:background_color_test_work/provider/background_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetFactory {
  static Widget create() {
    return ChangeNotifierProvider(
      create: (_) => BackgroundViewModel(),
      child: const Background(),
    );
  }
}
