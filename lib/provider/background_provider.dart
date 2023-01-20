import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundState {
  final Color backgroundColor;
  final Color textColor;

  BackgroundState({required this.textColor, required this.backgroundColor});

  BackgroundState copyWith({
    Color? backgroundColor,
    Color? textColor,
  }) {
    return BackgroundState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
    );
  }
}

class BackgroundViewModel extends ChangeNotifier {
  BackgroundState state = BackgroundState(
    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    textColor: const Color.fromRGBO(0, 0, 0, 1),
  );

//''' Set random color to state'''
  void setColor() {
    final backgroundColor = randomColor();
    final textColor =
        (backgroundColor.red + backgroundColor.green + backgroundColor.blue) /
                    3 >
                100
            ? Colors.black
            : Colors.white;

    state = state.copyWith(
      backgroundColor: backgroundColor,
      textColor: textColor,
    );
    notifyListeners();
  }

// '''Create random color'''
  Color randomColor() {
    return Color.fromRGBO(
      Random().nextInt(266),
      Random().nextInt(266),
      Random().nextInt(266),
      1,
    );
  }
}
