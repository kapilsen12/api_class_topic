// import 'dart:convert';
//
// import 'package:api_class_project/Helpers/http_helper.dart';
// import 'package:api_class_project/Models/user_model.dart';
// import 'package:api_testing/Constants/api_urls.dart';
// import 'package:api_testing/Helpers/http_helper.dart';
// import 'package:api_testing/Models/user_model.dart';
// import 'package:get/get.dart';
//
// class HomeScreenControllers extends GetxController {
//   RxBool isLoading = false.obs;
//   List<UserModel> users = <UserModel>[].obs;
//
//   // function to call users api
//   Future<void> fetchAllUsers() async {
//     isLoading.value = true;
//     final NetworkHelper networkHelper = NetworkHelper(url: usersApi);
//     await networkHelper.getData().then((value) {
//       isLoading.value = false;
//       if (value != "Error") {
//         users.clear();
//         List data = jsonDecode(value)['data'];
//         for (var i = 0; i < data.length; i++) {
//           users.add(UserModel.fromJson(data[i]));
//         }
//       }
//     });
//     update();
//   }
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchAllUsers();
//   }
// }
