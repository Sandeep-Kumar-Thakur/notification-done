// import 'package:bookys/constants/color_constants.dart';
// import 'package:flutter/material.dart';
//
// class MyTextView extends StatelessWidget {
//
//   final String text;
//   final TextAlign textAlign;
//   final Color textColor;
//   final TextDecoration textDecoration;
//   final double fontSize;
//   final FontWeight fontWeight;
//   final FontStyle fontStyle;
//
//   MyTextView(this.text, this.textAlign, this.textColor, this.textDecoration,
//       this.fontSize, this.fontWeight, this.fontStyle);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       textAlign: textAlign,
//       style: TextStyle(
//           color:textColor==ColorConstants.black? ColorConstants.bookysTextMain:textColor,
//           decoration: textDecoration,
//           fontSize: fontSize,
//           fontFamily: 'Inter',
//           fontWeight: fontWeight,
//           fontStyle: fontStyle),
//     );
//   }
// }
//
//
// class MyTextViewWithLimit extends StatelessWidget {
//
//   final String text;
//   final TextAlign textAlign;
//   final Color textColor;
//   final TextDecoration textDecoration;
//   final double fontSize;
//   final FontWeight fontWeight;
//   final FontStyle fontStyle;
//   int limit;
//
//   MyTextViewWithLimit(this.text, this.textAlign, this.textColor, this.textDecoration,
//       this.fontSize, this.fontWeight, this.fontStyle,this.limit);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       textAlign: textAlign,
//       maxLines: limit,
//       style: TextStyle(
//           color: textColor,
//           decoration: textDecoration,
//           fontSize: fontSize,
//           fontFamily: 'Inter',
//           fontWeight: fontWeight,
//           fontStyle: fontStyle),
//     );
//   }
// }
