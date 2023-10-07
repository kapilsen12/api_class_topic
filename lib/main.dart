import 'package:api_class_project/Screens/login_screen.dart';
import 'package:api_class_project/list_form_data.dart';
import 'package:api_class_project/list_form_data2.dart';
import 'package:api_class_project/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: const list2(),
    );
  }
}
