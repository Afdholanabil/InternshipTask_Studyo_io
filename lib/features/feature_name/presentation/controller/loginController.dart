import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task_studyoio/core/utils/appStyles.dart';
import 'package:internship_task_studyoio/routes/app_routes.dart';

class LoginController extends GetxController {
   final account = TextEditingController().obs;
  final pass = TextEditingController().obs;
  var isLoading = false.obs;
  var passwordVisible = true.obs;

  String title = 'Pesan Error';

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  bool isValidEmail(String email) {
  
    final RegExp emailRegex =
        RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");

    if (!emailRegex.hasMatch(email)) {
     
      Get.snackbar('Pesan Error', 'Alamat email tidak valid',
          backgroundColor: oren, colorText: Colors.white);
      return false;
    }

   
    return true;
  }

  bool checkInput() {
    if (account.value.text.isEmpty) {
      Get.snackbar(title, 'Alamat email tidak boleh kosong',
          backgroundColor: oren, colorText: white);
      return false;
    }

    if (account.value.text.length > 320) {
      Get.snackbar(title, 'Alamat email kamu terlalu panjang',
          backgroundColor: oren, colorText: white);
      return false;
    }
    if (!isValidEmail(account.value.text)) {
      Get.snackbar(title, 'Alamat email tidak valid',
          backgroundColor: oren, colorText: white);
      return false;
    }
    if (account.value.text.contains(' ')) {
      Get.snackbar(title, 'Alamat email tidak valid',
          backgroundColor: oren, colorText: white);
      return false;
    }
    if (pass.value.text.isEmpty) {
      Get.snackbar(title, 'password tidak boleh kosong',
          backgroundColor: oren, colorText: white);
      return false;
    }
    if (pass.value.text.length < 5) {
      Get.snackbar(title, 'password yang kamu masukkan terlalu pendek',
          backgroundColor: oren, colorText: white);
      return false;
    }
    if (pass.value.text.length > 16) {
      Get.snackbar(title, 'password yang kamu masukkan terlalu panjang',
          backgroundColor: oren, colorText: white);
      return false;
    }
    return true;
  }


  showHidePass() => passwordVisible.value = !passwordVisible.value;
  masukDashboard() => Get.toNamed(Routes.dashboard);
}