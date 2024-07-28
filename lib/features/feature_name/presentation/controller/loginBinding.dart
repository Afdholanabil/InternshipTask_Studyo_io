import 'package:get/get.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/controller/loginController.dart';

class LoginBindings extends Bindings {
   @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}