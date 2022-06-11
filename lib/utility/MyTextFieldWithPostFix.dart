// import 'dart:developer';
//
// import 'package:bookys/commen_file/CommonDimens.dart';
// import 'package:bookys/commen_file/CommonStyles.dart';
// import 'package:bookys/constants/color_constants.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class MyTextFieldWithPostFix extends StatefulWidget {
//   final double width;
//   final double height;
//   final TextEditingController controller;
//   final bool obscureValue;
//   final FocusNode focusNode;
//   final String hintText;
//   final String labelText;
//
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
//   final String validation;
//
//   MyTextFieldWithPostFix(
//       this.width,
//       this.height,
//       this.controller,
//       this.obscureValue,
//       this.focusNode,
//       this.hintText,
//       this.labelText,
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
//       this.validation);
//
//   @override
//   _MyTextFieldWithPostFixState createState() => _MyTextFieldWithPostFixState();
// }
//
// class _MyTextFieldWithPostFixState extends State<MyTextFieldWithPostFix> {
//   @override
//   Widget build(BuildContext context) {
//     log(widget.enabledBorderColor.toString() +
//         "----" +
//         widget.hintText.toString() +
//         " hint");
//     return Container(
//       width: widget.width,
//       child: TextFormField(
//           validator: (v) {
//             if (v.isEmpty) {
//               return "The " + widget.validation + " is required";
//             }
//             return null;
//           },
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           obscureText: widget.obscureValue,
//           focusNode: widget.focusNode,
//           autocorrect: false,
//           controller: widget.controller,
//           style: TextStyle(
//               color: "Job Title, Keywords (e.g. Barkepper / C++)" ==
//                       widget.hintText
//                   ? Colors.transparent
//                   : ColorConstants.bookysTextMain,
//               fontSize: CommonDimens.textFieldTextSize),
//           decoration: InputDecoration(
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(CommonDimens.textFieldRadius),
//               borderSide: BorderSide(
//                   color: widget.enabledBorderColor !=
//                           ColorConstants.pageViewIndicatorGray
//                       ? widget.enabledBorderColor
//                       : ColorConstants.offWhite,
//                   width: 1),
//             ),
//             contentPadding: EdgeInsets.only(
//                 top: widget.height / 4,
//                 // HERE THE IMPORTANT PART
//                 left: 12),
//             labelText: widget.labelText,
//             labelStyle: TextStyle(
//                 color: widget.focusNode.hasFocus
//                     ? widget.focusedBorderColor
//                     : ColorConstants.pageViewIndicatorGray,
//                 fontSize: CommonDimens.textFieldLabelSize),
//             suffixIcon: Container(
//                 height: CommonDimens.textFieldPrefixSize,
//                 width: CommonDimens.textFieldPrefixSize,
//                 child: widget.postFixIcon),
//             hintText: widget.hintText,
//             hintStyle: CommonStyles.textFieldHintStyle,
//             filled: widget.filled,
//             fillColor: widget.filledColor,
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.all(
//                   Radius.circular(CommonDimens.textFieldEnabledRadius)),
//               borderSide: BorderSide(
//                   color: widget.enabledBorderColor !=
//                           ColorConstants.pageViewIndicatorGray
//                       ? widget.enabledBorderColor
//                       : ColorConstants.offWhite,
//                   width: 1),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.all(
//                   Radius.circular(CommonDimens.textFieldFocusRadius)),
//               borderSide:
//                   BorderSide(color: widget.focusedBorderColor, width: 1),
//             ),
//           )),
//     );
//   }
// }
