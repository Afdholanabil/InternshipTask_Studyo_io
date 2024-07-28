import 'package:get/get.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/controller/dashboardController.dart';

class DashboardBindings extends Bindings {
   @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}