import 'package:background_color_test_work/provider/background_view_model.dart';
import 'package:background_color_test_work/widget/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: public_member_api_docs
abstract class WidgetFactory {
  // ignore: public_member_api_docs
  static Widget create() {
    return ChangeNotifierProvider(
      create: (_) => BackgroundViewModel(),
      child: const BackgroundWidget(),
    );
  }
}
