// import 'package:api_class_project/Controllers/home_screen_controller.dart';
// import 'package:api_class_project/Controllers/login_controller.dart';
// import 'package:api_testing/Controllers/home_screen_controllers.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../Constants/Styles/styled_text.dart';
// import '../Constants/Styles/styles.dart';
// import '../Constants/responsive_constants.dart';
// import '../Controllers/login_controllers.dart';
// import '../Globals/globals.dart';
// import '../Utils/spacings.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final HomeScreenControllers homeScreenControllers =
//     Get.put(HomeScreenControllers());
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         color: colorsControllers.primaryColor2.value,
//       ),
//       child: Scaffold(
//         backgroundColor: colorsControllers.transparentColor.value,
//         appBar: AppBar(
//           backgroundColor: colorsControllers.primaryColor.value,
//           surfaceTintColor: colorsControllers.primaryColor.value,
//           centerTitle: true,
//           title: StyledHeadingText(
//             heading: "API Example",
//             fontColor: colorsControllers.whiteColor.value,
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Get.put(LoginController()).logout(),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.logout,
//                     color: colorsControllers.whiteColor.value,
//                   ),
//                   gap(10),
//                   StyledTextSize18(
//                     text: "Logout",
//                     color: colorsControllers.whiteColor.value,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         body: Obx(
//               () => Visibility(
//             replacement: const Center(
//               child: CircularProgressIndicator(),
//             ),
//             visible: !homeScreenControllers.isLoading.value,
//             child: GridView(
//               padding: const EdgeInsets.all(10),
//               shrinkWrap: true,
//               gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                 maxCrossAxisExtent:
//                 screenWidth(context) > 685 ? 400 : screenWidth(context),
//                 mainAxisExtent: 120,
//                 mainAxisSpacing: 10,
//                 crossAxisSpacing: 10,
//               ),
//               children: homeScreenControllers.users
//                   .map(
//                     (e) => Stack(
//                   children: [
//                     InkWell(
//                       borderRadius: BorderRadius.circular(8),
//                       onTap: () {},
//                       child: Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 20,
//                         ),
//                         margin: const EdgeInsets.symmetric(
//                           horizontal: 8,
//                           vertical: 8,
//                         ),
//                         decoration: containerDecortionWithShadow(
//                           true,
//                         ).copyWith(
//                           color: colorsControllers.whiteColor.value,
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Image.network(
//                                   e.avatar,
//                                   width: 50,
//                                   height: 50,
//                                 ),
//                                 gap(10),
//                                 Column(
//                                   crossAxisAlignment:
//                                   CrossAxisAlignment.start,
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     StyledHeadingText(
//                                       heading:
//                                       "${e.firstame} ${e.lastName}",
//                                       fontColor: colorsControllers
//                                           .primaryColor.value,
//                                       fontSize: 16,
//                                       maxLines: 2,
//                                       textAlignCenter: false,
//                                     ),
//                                     StyledTextSize18(
//                                       text: e.email,
//                                       color: colorsControllers
//                                           .primaryColor.value,
//                                       maxLine: 1,
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.bottomRight,
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                           bottom: 14,
//                           right: 14,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             CircleAvatar(
//                               backgroundColor:
//                               colorsControllers.primaryColor.value,
//                               radius: 13,
//                               child: InkWell(
//                                 onTap: () {},
//                                 borderRadius: BorderRadius.circular(100),
//                                 child: Icon(
//                                   Icons.edit,
//                                   color: colorsControllers.whiteColor.value,
//                                   size: 15,
//                                 ),
//                               ),
//                             ),
//                             gap(6),
//                             CircleAvatar(
//                               backgroundColor:
//                               colorsControllers.primaryColor.value,
//                               radius: 13,
//                               child: InkWell(
//                                 onTap: () {},
//                                 borderRadius: BorderRadius.circular(100),
//                                 child: Icon(
//                                   Icons.delete_sharp,
//                                   color: colorsControllers.whiteColor.value,
//                                   size: 15,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               )
//                   .toList(),
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           backgroundColor: colorsControllers.primaryColor.value,
//           child: Icon(
//             Icons.add,
//             color: colorsControllers.whiteColor.value,
//           ),
//         ),
//       ),
//     );
//   }
// }
