import 'package:flutter_riverpod/legacy.dart';

class TextControllerNotifier extends StateNotifier<int>{
  TextControllerNotifier(): super(0);

  void update(int x){
    state = x;
  }
}