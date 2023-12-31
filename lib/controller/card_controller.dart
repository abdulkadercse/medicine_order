import 'package:get/get.dart';
import '../model/medicine_model.dart';

class CartController extends GetxController{
  final discount = true.obs;
  final cartItems = <MedicineModel>[].obs;
  final isAccepted = false.obs;
  List<String> methods = ['bKash Payment', 'Credit/Debit Card','Nagad Payment'];
  final methodValue = 'bKash Payment'.obs;
  double get totalPrice => cartItems.fold(0, (total, element) => total + double.parse(element.salePrice!) * element.quantity.value);
  double get savedPrice => cartItems.fold(0, (total, element) => total + ((double.parse(element.regularPrice!)-double.parse(element.salePrice!)) * element.quantity.value));
  int get totalItems => cartItems.length;

  void deleteCart(){
    for (var element in cartItems) {
      element.isInCart.value = false;
    }
    cartItems.clear();
  }

}