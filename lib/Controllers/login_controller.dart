// import 'package:api_class_project/Helpers/http_helper.dart';
// import 'package:api_testing/Constants/api_urls.dart';
// import 'package:api_testing/Helpers/http_helper.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../Routes/routes.dart';
// import '../Utils/toast_messages.dart';
//
// class LoginController extends GetxController {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController =
//   TextEditingController();
//   RxBool isPasswordSame = true.obs;
//
//   // function to login user using email and password
//   Future<void> loginUser(BuildContext context) async {
//     // Check if the email and password are not empty
//     final NetworkHelper networkHelper = NetworkHelper(url: loginApi);
//     Map bodyData = {
//       "email": emailController.text,
//       "password": passwordController.text,
//     };
//     await networkHelper.postData(bodyData).then((value) {
//       if (value != "Error") {
//         Get.offNamed(Routes.home);
//       } else {
//         showErrorToast("Error", "Something went wrong", context);
//       }
//     });
//   }
//
//   // function to create user using email and password
//   void signUpUser(BuildContext context) {
//     if (emailController.text != "" && passwordController.text != "") {
//       if (passwordController.text == confirmPasswordController.text) {
//         isPasswordSame.value = true;
//         Get.offNamed(Routes.home);
//       } else {
//         isPasswordSame.value = false;
//         showErrorToast("Oops!", "Passwords does not match", context);
//       }
//     } else {
//       showErrorToast("Oops!", "Please provide email and passwords", context);
//     }
//     update();
//   }
//
//   // function to logout user
//   Future<void> logout() async {
//     Get.offNamed(Routes.login);
//   }
// }
