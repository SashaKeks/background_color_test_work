import 'package:background_color_test_work/factory/widget_factory.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetFactory.create(),
    ),
  );
}
