import 'package:get/get.dart';

class HomeController extends GetxController {
  //================================ Simple State Management

  // int count = 0;
  // incrementCount() {
  //   count++;
  //   update();
  // }

  // REACTIVE STATE MANAGEMENT
  RxInt count = 0.obs;
  incrementCount() {
    count.value++;
  }
}
