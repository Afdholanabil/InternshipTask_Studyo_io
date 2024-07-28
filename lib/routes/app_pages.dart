import 'package:get/get.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/controller/dashboardBinding.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/controller/loginBinding.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/pages/dashboard_pages.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/pages/login_pages.dart';
import 'package:internship_task_studyoio/routes/app_routes.dart';

class AppPages {
  static const initial = Routes.login;
  static const dashboard = Routes.dashboard;

  static final routes = [
    GetPage(
      name: Routes.login, 
      page: ()=> LoginPages(),
      binding: LoginBindings()),
      GetPage(
        name: Routes.dashboard,
        page: () => DashboardPages(),
        binding: DashboardBindings()),
  ];
}
