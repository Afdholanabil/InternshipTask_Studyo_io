import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/controller/authController.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/pages/dashboard_pages.dart';
import 'package:internship_task_studyoio/features/feature_name/presentation/pages/loadingPages.dart';
import 'package:internship_task_studyoio/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelKey: 'channelKey',
        channelName: 'channelName',
        channelDescription: 'channelDescription')
  ]);

  if (Platform.isAndroid) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC5_tIAGSVqyFfQBFY2GWATrB4mVeguWOM",
            authDomain: "internship-task-studyoio.firebaseapp.com",
            projectId: "internship-task-studyoio",
            storageBucket: "internship-task-studyoio.appspot.com",
            messagingSenderId: "268236657873",
            appId: "1:268236657873:web:700cd0a1439f7aa9e561f0",
            measurementId: "G-CTHZCB1LYJ"));
  } else {
    Firebase.initializeApp();
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = auth.currentUser;

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MainApp()));
}

class MainApp extends StatelessWidget {
  final loginC = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: loginC.streamAuthStatus,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            return GetMaterialApp(
              title: 'Internship Task App',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: Brightness.light,
              ),
              initialRoute:
                  snapshot.data != null ? AppPages.dashboard : AppPages.initial,
              getPages: AppPages.routes,
            );
          }
          return LoadingPages();
        });
  }
}
