import 'package:bookly/features/splash/view_model/logo_notifier.dart';
import 'package:bookly/features/splash/view_model/text_notifier.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_riverpod/legacy.dart';

final textAnimationProvider = StateNotifierProvider<TextControllerNotifier,int>((ref){
  return TextControllerNotifier();
});

final logAnimationProvider = StateNotifierProvider<LogAnimationNotifier,double>((ref){
  return LogAnimationNotifier();
});