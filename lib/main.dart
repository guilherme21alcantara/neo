//@dart=2.9
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:neo/Routes/app_pages.dart';
import 'package:neo/Routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp
    (
      title: 'NEO SEGURADORA',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: Routes.INITIAL,
      
    )
  );
}