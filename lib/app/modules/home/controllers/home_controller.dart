import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var books = 0.obs;
  var pens = 0.obs;

  // var sum = 0.obs;
  // void total (books, pens) {
  //   sum = books.value + pens.value;
  // }

  int get sum => books.value + pens.value;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void incrementBooks() => books.value++;

  void decrementBooks() {
    if (books.value <= 0) {
      Get.snackbar('Invalid Value', "Buying books cannot be less then 0",
          barBlur: 20, isDismissible: true, duration: Duration(seconds: 3));
    } else {
      books.value--;
    }
  }

  void incrementPens() => pens.value++;

  void decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar('Invalid Value', "Buying pens cannot be less then 0",
          barBlur: 20, isDismissible: true, duration: Duration(seconds: 3));
    } else {
      pens.value--;
    }
  }
}
