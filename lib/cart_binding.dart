import 'controller/card_controller.dart';
import 'package:get/get.dart';
class CartBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CartController());
  }
}