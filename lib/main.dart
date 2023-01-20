import 'package:background_color_test_work/factory/widget_factory.dart';
import 'package:background_color_test_work/provider/background_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetFactory.create(),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    const Duration duration = Duration(milliseconds: 250);
    return Scaffold(
      body: GestureDetector(
        onTap: context.read<BackgroundViewModel>().setColor,
        child: AnimatedContainer(
          duration: duration,
          color: context.select(
              (BackgroundViewModel value) => value.state.backgroundColor),
          child: Center(
            child: AnimatedDefaultTextStyle(
              duration: duration,
              style: TextStyle(
                  color: context.select(
                      (BackgroundViewModel value) => value.state.textColor),
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
              child: const Text(
                "Hey there",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
