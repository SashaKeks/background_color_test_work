import 'package:background_color_test_work/provider/background_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: public_member_api_docs
class BackgroundWidget extends StatelessWidget {
  // ignore: public_member_api_docs
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const Duration duration = Duration(milliseconds: 250);
    const double textSize = 40.0;

    return Scaffold(
      body: GestureDetector(
        onTap: context.read<BackgroundViewModel>().setColor,
        child: AnimatedContainer(
          duration: duration,
          color: context.select(
            (BackgroundViewModel value) => value.state.backgroundColor,
          ),
          child: Center(
            child: AnimatedDefaultTextStyle(
              duration: duration,
              style: TextStyle(
                color: context.select(
                  (BackgroundViewModel value) => value.state.textColor,
                ),
                fontSize: textSize,
                fontWeight: FontWeight.bold,
              ),
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
