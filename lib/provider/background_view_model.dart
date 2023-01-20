import 'dart:math';

import 'package:flutter/material.dart';

class _BackgroundState {
  final Color backgroundColor;
  final Color textColor;

  _BackgroundState({required this.textColor, required this.backgroundColor});

  _BackgroundState copyWith({
    Color? backgroundColor,
    Color? textColor,
  }) {
    return _BackgroundState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
    );
  }
}

// ignore: public_member_api_docs
class BackgroundViewModel extends ChangeNotifier {
  _BackgroundState _state = _BackgroundState(
    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    textColor: const Color.fromRGBO(0, 0, 0, 1),
  );

  // ignore: public_member_api_docs
  _BackgroundState get state => _state;

  // ignore: public_member_api_docs
  void setColor() {
    final backgroundColor = _randomColor();
    final textColor =
        (backgroundColor.red + backgroundColor.green + backgroundColor.blue) /
                    3 >
                100
            ? Colors.black
            : Colors.white;

    _state = state.copyWith(
      backgroundColor: backgroundColor,
      textColor: textColor,
    );
    notifyListeners();
  }

// '''Create random color'''
  Color _randomColor() {
    const int rgbRandom = 266;

    return Color.fromRGBO(
      Random().nextInt(rgbRandom),
      Random().nextInt(rgbRandom),
      Random().nextInt(rgbRandom),
      1,
    );
  }
}
