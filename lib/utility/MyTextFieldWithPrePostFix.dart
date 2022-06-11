// import 'package:bookys/commen_file/CommonDimens.dart';
// import 'package:bookys/commen_file/CommonStyles.dart';
// import 'package:bookys/constants/color_constants.dart';
// import 'package:bookys/views/employer/signup/controller/EmployeeSignUpController.dart';
// import 'package:bookys/views/validation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_utils/src/get_utils/get_utils.dart';
//
// class MyTextFieldWithPrePostFix extends StatefulWidget {
//   final double width;
//   final double height;
//   final TextEditingController controller;
//   final bool obscureValue;
//   final FocusNode focusNode;
//   final String hintText;
//   final String labelText;
//   final Widget preFixIcon;
//   final Widget postFixIcon;
//   final Color hintColor;
//   final double hintFontSize;
//   final bool filled;
//   final Color filledColor;
//   final double enabledBorderRadius;
//   final Color enabledBorderColor;
//   final double enabledBorderWidth;
//   final double focusedBorderRadius;
//   final Color focusedBorderColor;
//   final double focusedBorderWidth;
//
//   MyTextFieldWithPrePostFix(this.width,
//       this.height,
//       this.controller,
//       this.obscureValue,
//       this.focusNode,
//       this.hintText,
//       this.labelText,
//       this.preFixIcon,
//       this.postFixIcon,
//       this.hintColor,
//       this.hintFontSize,
//       this.filled,
//       this.filledColor,
//       this.enabledBorderRadius,
//       this.enabledBorderColor,
//       this.enabledBorderWidth,
//       this.focusedBorderRadius,
//       this.focusedBorderColor,
//       this.focusedBorderWidth);
//
//   @override
//   _MyTextFieldWithPrePostFixState createState() =>
//       _MyTextFieldWithPrePostFixState();
// }
//
// class _MyTextFieldWithPrePostFixState extends State<MyTextFieldWithPrePostFix> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: widget.width,
//       height: widget.height,
//       child: TextFormField(
//           obscureText: widget.obscureValue,
//           focusNode: widget.focusNode,
//           autocorrect: false,
//           controller: widget.controller,
//           style: CommonStyles.textFieldStyle,
//           decoration: InputDecoration(
//               labelText: widget.labelText,
//               labelStyle: TextStyle(
//                   color: widget.hintColor,
//                   fontSize: CommonDimens.textFieldLabelSize),
//               hintText: widget.hintText,
//               prefixIcon: Container(
//                   height: CommonDimens.textFieldPrefixSize,
//                   width: CommonDimens.textFieldPrefixSize,
//                   child: widget.preFixIcon),
//               suffixIcon: Container(
//                   height: CommonDimens.textFieldPrefixSize,
//                   width: CommonDimens.textFieldPrefixSize,
//                   child: widget.postFixIcon),
//               hintStyle: CommonStyles.textFieldHintStyle,
//               filled: widget.filled,
//               fillColor: widget.filledColor,
//           enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(
//               Radius.circular(CommonDimens.textFieldEnabledRadius)),
//       borderSide: BorderSide(
//           color: widget.enabledBorderColor,
//           width: widget.enabledBorderWidth),
//     ),
//     focusedBorder: OutlineInputBorder(
//     borderRadius: BorderRadius.all(
//     Radius.circular(CommonDimens.textFieldFocusRadius)),
//     borderSide:
//     BorderSide(color: widget.focusedBorderColor, width: 1),
//     ))),
//     );
//   }
// }
//
// class PasswordField extends StatefulWidget {
//   final double width;
//   final double height;
//   final TextEditingController controller;
//   final bool obscureValue;
//   final FocusNode focusNode;
//   final String hintText;
//   final String labelText;
//   final Widget preFixIcon;
//   final Widget postFixIcon;
//   final Color hintColor;
//   final double hintFontSize;
//   final bool filled;
//   final Color filledColor;
//   final double enabledBorderRadius;
//   final Color enabledBorderColor;
//   final double enabledBorderWidth;
//   final double focusedBorderRadius;
//   final Color focusedBorderColor;
//   final double focusedBorderWidth;
//   final bool obscure;
//   final double textFontSize;
//
//   PasswordField(this.width,
//       this.height,
//       this.controller,
//       this.obscureValue,
//       this.focusNode,
//       this.hintText,
//       this.labelText,
//       this.preFixIcon,
//       this.postFixIcon,
//       this.hintColor,
//       this.hintFontSize,
//       this.filled,
//       this.filledColor,
//       this.enabledBorderRadius,
//       this.enabledBorderColor,
//       this.enabledBorderWidth,
//       this.focusedBorderRadius,
//       this.focusedBorderColor,
//       this.focusedBorderWidth,
//       this.obscure,
//       this.textFontSize,);
//
//   @override
//   _PasswordField createState() => _PasswordField();
// }
//
// class _PasswordField extends State<PasswordField> {
//   final autovalidateController = Get.put(TextFieldValidation());
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: widget.width,
//         child: TextFormField(
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'The ${widget.labelText.toLowerCase()} is required';
//               } else if (value.length < 8) {
//                 return "The ${widget.labelText
//                     .toLowerCase()} must contain 8 character, 1 lowercase, 1 special character & 1 digit";
//               } else if (!validateStructure(value)) {
//                 return "The ${widget.labelText
//                     .toLowerCase()} must contain 8 character, 1 lowercase, 1 special character & 1 digit";
//               } else
//                 return null;
//               // 1
//             },
//             focusNode: widget.focusNode,
//             autocorrect: false,
//             controller: widget.controller,
//             style: CommonStyles.textFieldStyle,
//             keyboardType: TextInputType.text,
//             autovalidateMode: autovalidateController.autovalidation.value
//                 ? AutovalidateMode.onUserInteraction
//                 : AutovalidateMode.disabled,
//             textAlign: TextAlign.start,
//             obscureText: widget.obscure,
//             decoration: InputDecoration(
//               errorMaxLines: 2,
//               border: OutlineInputBorder(
//                 borderRadius:
//                 BorderRadius.circular(CommonDimens.textFieldRadius),
//                 borderSide:
//                 BorderSide(color: widget.enabledBorderColor, width: 1),
//               ),
//               contentPadding: EdgeInsets.only(
//                 top: widget.height / 4, // HERE THE IMPORTANT PART
//               ),
//               labelText: widget.labelText,
//               labelStyle: TextStyle(
//                   color: widget.focusNode.hasFocus
//                       ? widget.focusedBorderColor
//                       : ColorConstants.pageViewIndicatorGray,
//                   fontSize: CommonDimens.textFieldLabelSize),
//               prefixIcon: Container(
//                   height: CommonDimens.textFieldPrefixSize,
//                   width: CommonDimens.textFieldPrefixSize,
//                   child: widget.preFixIcon),
//               suffixIcon: Container(
//                   height: CommonDimens.textFieldPrefixSize,
//                   width: CommonDimens.textFieldPrefixSize,
//                   child: widget.postFixIcon),
//               hintText: widget.hintText,
//               hintStyle: CommonStyles.textFieldHintStyle,
//               filled: widget.filled,
//               fillColor: widget.filledColor,
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(CommonDimens.textFieldEnabledRadius)),
//                 borderSide:
//                 BorderSide(color: widget.enabledBorderColor, width: 1),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(CommonDimens.textFieldFocusRadius)),
//                 borderSide:
//                 BorderSide(color: widget.focusedBorderColor, width: 1),
//               ),
//             )));
//   }
//
//   bool validateStructure(String value) {
//     String pattern = r'^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
//     RegExp regExp = new RegExp(pattern);
//     return regExp.hasMatch(value);
//   }
// }
//
// class ConPasswordField extends StatefulWidget {
//   final double width;
//   final double height;
//   final TextEditingController controller;
//   final bool obscureValue;
//   final FocusNode focusNode;
//   final String hintText;
//   final String labelText;
//   final Widget preFixIcon;
//   final Widget postFixIcon;
//   final Color hintColor;
//   final double hintFontSize;
//   final bool filled;
//   final Color filledColor;
//   final double enabledBorderRadius;
//   final Color enabledBorderColor;
//   final double enabledBorderWidth;
//   final double focusedBorderRadius;
//   final Color focusedBorderColor;
//   final double focusedBorderWidth;
//   final bool obscure;
//   final double textFontSize;
//
//   ConPasswordField(this.width,
//       this.height,
//       this.controller,
//       this.obscureValue,
//       this.focusNode,
//       this.hintText,
//       this.labelText,
//       this.preFixIcon,
//       this.postFixIcon,
//       this.hintColor,
//       this.hintFontSize,
//       this.filled,
//       this.filledColor,
//       this.enabledBorderRadius,
//       this.enabledBorderColor,
//       this.enabledBorderWidth,
//       this.focusedBorderRadius,
//       this.focusedBorderColor,
//       this.focusedBorderWidth,
//       this.obscure,
//       this.textFontSize,);
//
//   @override
//   _ConPasswordField createState() => _ConPasswordField();
// }
//
// class _ConPasswordField extends State<ConPasswordField> {
//   final autovalidateController = Get.put(TextFieldValidation());
//   EmployeeSignUpController employeeSignUpController =
//   Get.put(EmployeeSignUpController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: widget.width,
//         child: TextFormField(
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'The ${widget.labelText.toLowerCase()} is required';
//               }
//               if (value.length < 8) {
//                 return 'The ${widget.labelText
//                     .toLowerCase()}  must contain 8 character, 1 lowercase, 1 special character & 1 digit';
//               }
//
//               if (employeeSignUpController.passwordController.value.text !=
//                   employeeSignUpController.conPassController.value.text) {
//                 return "${widget.labelText.toLowerCase()} mismatch";
//               }
//               return null;
//             },
//             focusNode: widget.focusNode,
//             autocorrect: false,
//             controller: widget.controller,
//             style: CommonStyles.textFieldStyle,
//             keyboardType: TextInputType.text,
//             autovalidateMode: autovalidateController.autovalidation.value
//                 ? AutovalidateMode.onUserInteraction
//                 : AutovalidateMode.disabled,
//             textAlign: TextAlign.start,
//             obscureText: widget.obscure,
//             decoration: InputDecoration(
//               errorMaxLines: 2,
//               border: OutlineInputBorder(
//                 borderRadius:
//                 BorderRadius.circular(CommonDimens.textFieldRadius),
//                 borderSide:
//                 BorderSide(color: widget.enabledBorderColor, width: 1),
//               ),
//               contentPadding: EdgeInsets.only(
//                 top: widget.height / 4, // HERE THE IMPORTANT PART
//               ),
//               labelText: widget.labelText,
//               labelStyle: TextStyle(
//                   color: widget.focusNode.hasFocus
//                       ? widget.focusedBorderColor
//                       : ColorConstants.pageViewIndicatorGray,
//                   fontSize: CommonDimens.textFieldLabelSize),
//               prefixIcon: Container(
//                   height: CommonDimens.textFieldPrefixSize,
//                   width: CommonDimens.textFieldPrefixSize,
//                   child: widget.preFixIcon),
//               suffixIcon: Container(
//                   height: CommonDimens.textFieldPrefixSize,
//                   width: CommonDimens.textFieldPrefixSize,
//                   child: widget.postFixIcon),
//               hintText: widget.hintText,
//               hintStyle: CommonStyles.textFieldHintStyle,
//               filled: widget.filled,
//               fillColor: widget.filledColor,
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(CommonDimens.textFieldEnabledRadius)),
//                 borderSide:
//                 BorderSide(color: widget.enabledBorderColor, width: 1),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(CommonDimens.textFieldFocusRadius)),
//                 borderSide:
//                 BorderSide(color: widget.focusedBorderColor, width: 1),
//               ),
//             )));
//   }
//
//   bool validateStructure(String value) {
//     String pattern =
//         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
//     RegExp regExp = new RegExp(pattern);
//     return regExp.hasMatch(value);
//   }
// }
