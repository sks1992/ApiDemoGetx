import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

void main() {
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
