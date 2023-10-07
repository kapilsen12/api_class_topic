// import 'package:api_class_project/Controllers/login_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../Constants/Styles/styled_text.dart';
// import '../Constants/Styles/styles.dart';
// import '../Constants/responsive_constants.dart';
// import '../Controllers/login_controllers.dart';
// import '../Globals/globals.dart';
// import '../Utils/spacings.dart';
// import '../Widgets/custom_filter_text_field.dart';
// import '../Widgets/custom_primary_button.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   bool _showLoginScreen = true;
//   @override
//   Widget build(BuildContext context) {
//     final LoginController loginController = Get.put(LoginController());
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         color: colorsControllers.primaryColor2.value,
//       ),
//       child: Scaffold(
//         backgroundColor: colorsControllers.transparentColor.value,
//         body: Center(
//           child: Container(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 20,
//             ),
//             margin: const EdgeInsets.symmetric(
//               horizontal: 25,
//               vertical: 25,
//             ),
//             constraints: BoxConstraints(
//               maxWidth: 500,
//               minWidth: screenWidth(context) < 433 ? 240 : 400,
//             ),
//             decoration: containerDecortionWithShadow(
//               true,
//             ),
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   spacing(12),
//                   if (!_showLoginScreen) ...[
//                     spacing(18),
//                     CustomFilterTextField(
//                       hintText: 'Name*',
//                       controller: loginController.nameController,
//                       onSubmit: () {
//                         if (_showLoginScreen) {
//                           loginController.loginUser(context);
//                         } else {
//                           loginController.signUpUser(context);
//                         }
//                       },
//                     ),
//                     spacing(18),
//                   ],
//                   CustomFilterTextField(
//                     hintText: 'Email*',
//                     controller: loginController.emailController,
//                     textInputType: TextInputType.emailAddress,
//                     onSubmit: () {
//                       if (_showLoginScreen) {
//                         loginController.loginUser(context);
//                       } else {
//                         loginController.signUpUser(context);
//                       }
//                     },
//                   ),
//                   spacing(18),
//                   CustomFilterTextField(
//                     hintText: 'Password*',
//                     controller: loginController.passwordController,
//                     onSubmit: () {
//                       if (_showLoginScreen) {
//                         loginController.loginUser(context);
//                       } else {
//                         loginController.signUpUser(context);
//                       }
//                     },
//                     isPassword: true,
//                   ),
//                   if (!_showLoginScreen) ...[
//                     spacing(18),
//                     CustomFilterTextField(
//                       hintText: 'Confirm Password*',
//                       controller: loginController.confirmPasswordController,
//                       onSubmit: () {
//                         if (_showLoginScreen) {
//                           loginController.loginUser(context);
//                         } else {
//                           loginController.signUpUser(context);
//                         }
//                       },
//                       isPassword: true,
//                     ),
//                     spacing(18),
//                     Obx(
//                           () => Visibility(
//                         visible: loginController.isPasswordSame.isFalse,
//                         child: const StyledTextSize18(
//                           text:
//                           "** Password And Confirm Password Does Not Match **",
//                           color: Colors.red,
//                           fontWeight: FontWeight.w500,
//                           textAlign: TextAlign.start,
//                         ),
//                       ),
//                     ),
//                   ],
//                   spacing(20),
//                   Center(
//                     child: SizedBox(
//                       width: 200,
//                       child: CustomButton(
//                         onTapFunction: () {
//                           if (_showLoginScreen) {
//                             loginController.loginUser(context);
//                           } else {
//                             loginController.signUpUser(context);
//                           }
//                         },
//                         buttonText: _showLoginScreen ? "Login" : "Signup",
//                       ),
//                     ),
//                   ),
//                   spacing(20),
//                   TextButton(
//                     onPressed: () {
//                       setState(() {
//                         _showLoginScreen = !_showLoginScreen;
//                       });
//                     },
//                     child: StyledTextSize18(
//                       text: _showLoginScreen
//                           ? "Don't have an account? Click Here"
//                           : "Already have an account? Click Here",
//                     ),
//                   ),
//                   spacing(20),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
