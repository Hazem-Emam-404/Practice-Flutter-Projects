import 'package:flutter/animation.dart';
import 'package:flutter_riverpod/legacy.dart';

class LogAnimationNotifier extends StateNotifier<double>{
  LogAnimationNotifier(): super(0);

  void update(double x) => state = x;
}