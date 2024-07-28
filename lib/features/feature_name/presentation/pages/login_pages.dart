import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:internship_task_studyoio/core/utils/appStyles.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/controller/authController.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/controller/loginController.dart';

class LoginPages extends GetView<LoginController> {
  LoginPages({Key? key}) : super(key: key);

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
    final auth = Get.put(AuthController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
            for (final teksStyle in teksStyleSignIn)
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Align(
                            alignment: FractionalOffset.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Welcome in Sudoku Apps",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontFamily: "font/inter_bold.ttf",
                                      color: hitam2,
                                      fontSize: (25),
                                      fontWeight: FontWeight.w700)),
                            ),
                          ),
                     
                          Align(
                            alignment: FractionalOffset.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: double.infinity,
                                height: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'semuaAsset/gambar/awal.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: FractionalOffset.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Text("Email",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontFamily: "font/inter_medium.ttf",
                                      color: hitam2,
                                      fontSize: (18),
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          Align(
                            alignment: FractionalOffset.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(
                                width: double.infinity,
                                margin: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: Colors.grey.shade300,
                                        width: 1.2)),
                                child: TextFormField(
                                  controller: controller.account.value,
                                  cursorColor: Colors.black,
                                  style: teksStyle['SemiBold1'],
                                  decoration: InputDecoration(
                                      hintText: "Email",
                                      prefixIcon: const Icon(
                                        Icons.email_outlined,
                                        color: green,
                                      ),
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          10, 13, 10, 7),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: FractionalOffset.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text("Password",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontFamily: "font/inter_medium.ttf",
                                      color: hitam2,
                                      fontSize: (18),
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          Align(
                            alignment: FractionalOffset.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(
                                width: double.infinity,
                                margin: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: Colors.grey.shade300,
                                        width: 1.2)),
                                child: Obx(() => TextFormField(
                                      controller: controller.pass.value,
                                      obscureText:
                                          controller.passwordVisible.value,
                                      cursorColor: Colors.black,
                                      style: teksStyle['SemiBold1'],
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          prefixIcon: const Icon(
                                            Icons.lock_outline,
                                            color: green,
                                          ),
                                          suffixIcon: IconButton(
                                            onPressed: () =>
                                                controller.showHidePass(),
                                            splashColor: Colors.transparent,
                                            icon: Icon(
                                              !controller.passwordVisible.value
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: green,
                                            ),
                                            color: const Color.fromARGB(
                                                255, 143, 143, 143),
                                          ),
                                          suffixIconColor: Colors.black,
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  10, 13, 10, 7),
                                          border: InputBorder.none),
                                    )),
                              ),
                            ),
                          ),
                       
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: Material(
                                color: green,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                borderRadius: BorderRadius.circular(8),
                                child: Obx(() => InkWell(
                                      splashColor: green,
                                      highlightColor: green,
                                      onTap: () {
                                        if (controller.checkInput()) {
                                          auth.login(
                                              controller.account.value.text,
                                              controller.pass.value.text);
                                        }
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
                                                  Text("Login",
                                                      style:
                                                          teksStyle['Thin2']),
                                                ],
                                              ),
                                      ),
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ),
        ),
    );
  }
}
