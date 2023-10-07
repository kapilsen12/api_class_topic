import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorsControllers extends GetxController {
  Rx<Color> transparentColor = Colors.transparent.obs;
  Rx<Color> whiteColor = Colors.white.obs;
  Rx<Color> blackColor = Colors.black.obs;
  Rx<Color> blueColor = const Color(0XFF0061D2).obs;
  Rx<Color> primaryColor = const Color(0xFF2d2e2f).obs;
  Rx<Color> primaryColor2 = const Color(0XFFe0c6bf).obs;
}