import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:internship_task_studyoio/core/utils/appStyles.dart';
import 'package:internship_task_studyoio/core/utils/sizeConfig.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/controller/authController.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/controller/dashboardController.dart';

class DashboardPages extends GetView<DashboardController> {
  DashboardPages({Key? key}) : super(key: key);


  final List<Map> teksStyleSignIn = [
  {
    'Bold1': const TextStyle(
        fontFamily: "font/inter_bold.ttf",
        color: hitam2,
        fontSize: (25),
        fontWeight: FontWeight.w700),
    'SemiBold1': const TextStyle(
        fontFamily: "font/inter_bold.ttf",
        color: hitam2,
        height: 1.4,
        fontSize: (18)),
    'SemiBold2': const TextStyle(
        fontFamily: "font/inter_extrabold.ttf",
        color: Colors.blueAccent,
        fontSize: (18),
        fontWeight: FontWeight.w500),
    'SemiBold3': const TextStyle(
        fontFamily: "font/inter_extrabold.ttf",
        color: Colors.black45,
        fontSize: (18),
        fontWeight: FontWeight.w500),
    'Thin1': const TextStyle(
        fontFamily: "font/inter_regular.ttf",
        color: Colors.white,
        fontSize: (18),
        fontWeight: FontWeight.w500),
    'Thin2': const TextStyle(
        fontFamily: "font/inter_regular.ttf",
        color: Colors.white,
        fontSize: (18),
        fontWeight: FontWeight.w600),
    'normal': const TextStyle(
        fontFamily: "font/inter_regular.ttf",
        color: hitam2,
        fontSize: (18),
        fontWeight: FontWeight.w500)
  }
];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final auth = Get.put(AuthController());
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: paddingVertical6 ,horizontal: paddingHorozontal1),
            child: Material(
              color: green,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.circular(8),
              child: Obx(() => InkWell(
                    splashColor: green,
                    highlightColor: green,
                    onTap: () {
                        auth.logout();
                    },
                    child: SizedBox(
                      height: 50,
                      child: controller.isLoading.value
                          ? Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 30,
                                  width: 30,
                                  child:
                                      CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                    width: paddingVertical2),
                                Text(
                                  'loading...',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: white
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                for (final teksStyle in teksStyleSignIn)
                                Text("Logout",
                                    style:
                                        teksStyle['Thin2']),
                              ],
                            ),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
