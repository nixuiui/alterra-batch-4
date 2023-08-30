import 'package:get/get.dart';

class CounterController {

  final counter = 0.obs;

  void increment() {
    counter.value = counter.value + 1;
  }
  
}