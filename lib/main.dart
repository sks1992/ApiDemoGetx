import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/firebase_options.dart';

import 'app_routes.dart';
import 'core/service/notification_service.dart';
//30:7C:16:46:30:25:49:14:F3:EE:29:88:56:8F:76:97:1D:8D:6F:86
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );

  await NotificationService.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: RouteNames.albums,
      getPages: AppRoute.route,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
