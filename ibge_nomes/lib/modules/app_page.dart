import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibge_nomes/model/routes.model.dart';

class AppPage extends GetView {
  const AppPage({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "App Nomes",
      getPages: Routes.routespage,
      initialRoute: Routes.HOME,
    );
  }
}