// import 'package:bookys/commen_file/CommonDimens.dart';
// import 'package:bookys/commen_file/CommonStyles.dart';
// import 'package:bookys/constants/color_constants.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get_utils/src/get_utils/get_utils.dart';
//
// class MyTextField extends StatefulWidget {
//   final double width;
//   final double height;
//   final TextEditingController controller;
//   final TextInputType textInputType;
//   final TextAlign textAlign;
//   final FocusNode focusNode;
//   final String hintText;
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
//   MyTextField(
//       this.width,
//       this.height,
//       this.controller,
//       this.textInputType,
//       this.textAlign,
//       this.focusNode,
//       this.hintText,
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
//   _MyTextFieldState createState() => _MyTextFieldState();
// }
//
// class _MyTextFieldState extends State<MyTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: widget.width,
//       height: widget.height,
//       child: TextFormField(
//           validator: (v) {
//             if (v.isEmpty) {
//               return "is empty";
//             }
//             return null;
//           },
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           focusNode: widget.focusNode,
//           autocorrect: false,
//           controller: widget.controller,
//           keyboardType: widget.textInputType,
//           textAlign: widget.textAlign,
//           style: CommonStyles.textFieldStyle,
//           decoration: InputDecoration(
//             hintText: widget.hintText,
//             hintStyle: CommonStyles.textFieldHintStyle,
//             filled: widget.filled,
//             fillColor: widget.filledColor,
//             enabledBorder: OutlineInputBorder(
//               borderRadius:
//                   BorderRadius.all(Radius.circular(CommonDimens.textFieldEnabledRadius)),
//               borderSide: BorderSide(
//                   color: widget.enabledBorderColor !=
//                           ColorConstants.pageViewIndicatorGray
//                       ? ColorConstants.pageViewIndicatorGray
//                       : ColorConstants.offWhite,
//                   width: widget.enabledBorderWidth),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius:
//                   BorderRadius.all(Radius.circular(CommonDimens.textFieldFocusRadius)),
//               borderSide: BorderSide(
//                   color: widget.focusedBorderColor,
//                   width: widget.focusedBorderWidth),
//             ),
//           )),
//     );
//   }
// }
//
// class OtpField extends StatefulWidget {
//   final double width;
//   final double height;
//   final TextEditingController controller;
//   final TextInputType textInputType;
//   final TextAlign textAlign;
//   final FocusNode focusNode;
//   final String hintText;
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
//   OtpField(
//       this.width,
//       this.height,
//       this.controller,
//       this.textInputType,
//       this.textAlign,
//       this.focusNode,
//       this.hintText,
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
//   _OtpField createState() => _OtpField();
// }
//
// class _OtpField extends State<OtpField> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: widget.width,
//       height: 0.1.sh,
//       alignment: Alignment.centerLeft,
//       // decoration: widget.focusNode.hasFocus
//       //     ? BoxDecoration(
//       //         boxShadow: [
//       //           BoxShadow(
//       //             color: Colors.grey.withOpacity(0.3),
//       //             spreadRadius: 1,
//       //             blurRadius: 7,
//       //             offset: Offset(0, 3), // changes position of shadow
//       //           ),
//       //         ],
//       //       )
//       //     : BoxDecoration(),
//       child: TextFormField(
//           validator: (value) {
//             if (value.length == 0) {
//               return "Please enter OTP";
//             }
//
//             if (value.length < 4) {
//               return 'Invalid OTP';
//             }
//             return null;
//           },
//           focusNode: widget.focusNode,
//           autocorrect: false,
//           controller: widget.controller,
//           keyboardType: widget.textInputType,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           textAlign: TextAlign.center,
//                     style: CommonStyles.textFieldStyle,
//
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(horizontal: 15),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(CommonDimens.textFieldRadius),
//               borderSide:
//                   BorderSide(color: widget.enabledBorderColor !=
//                       ColorConstants.pageViewIndicatorGray
//                       ? ColorConstants.pageViewIndicatorGray
//                       : ColorConstants.offWhite, width: 1),
//             ),
//             hintText: widget.hintText,
//             hintStyle: CommonStyles.textFieldHintStyle,
//             filled: widget.filled,
//             fillColor: widget.filledColor,
//             enabledBorder: OutlineInputBorder(
//               borderRadius:
//                   BorderRadius.all(Radius.circular(CommonDimens.textFieldEnabledRadius)),
//               borderSide:
//                   BorderSide(color: widget.enabledBorderColor !=
//                       ColorConstants.pageViewIndicatorGray
//                       ? ColorConstants.pageViewIndicatorGray
//                       : ColorConstants.offWhite, width: 1),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius:
//                   BorderRadius.all(Radius.circular(CommonDimens.textFieldFocusRadius)),
//               borderSide:
//                   BorderSide(color: widget.focusedBorderColor, width: 1),
//             ),
//           )),
//     );
//   }
// }
