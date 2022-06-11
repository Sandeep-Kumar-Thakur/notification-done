// import 'package:bookys/commen_file/CommonDimens.dart';
// import 'package:bookys/commen_file/CommonStyles.dart';
// import 'package:bookys/constants/color_constants.dart';
// import 'package:flutter/material.dart';
//
// class MySearchTextField extends StatelessWidget {
//   MySearchTextField({
//     Key key,
//     this.onSuffixPressed,
//     this.onPrefixPressed,
//     this.onChanged,
//     this.showPrefix,
//     this.showSuffix,
//   }) : super(key: key);
//
//   final bool showPrefix;
//   final bool showSuffix;
//   final Function onSuffixPressed;
//   final Function onPrefixPressed;
//   final Function(String) onChanged;
//
//   Widget build(BuildContext context) {
//     return Container(
//       child: TextFormField(
//         textAlignVertical: TextAlignVertical.center,
//         style: CommonStyles.textFieldStyle,
//         onChanged: onChanged,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           isDense: true,
//           hintText: "Search",
//           hintStyle: CommonStyles.textFieldHintStyle,
//           prefixIcon: showPrefix
//               ? InkWell(
//                   onTap: onPrefixPressed,
//                   child: Icon(
//                     Icons.search,
//                     color: ColorConstants.grey,
//                     size: CommonDimens.textFieldPrefixSize,
//                   ),
//                 )
//               : SizedBox(),
//           suffixIcon: showSuffix
//               ? InkWell(
//                   onTap: onSuffixPressed,
//                   child: Icon(
//                     Icons.mic,
//                     color: ColorConstants.themeColor,
//                     size: CommonDimens.textFieldPrefixSize,
//                   ))
//               : SizedBox(),
//         ),
//       ),
//       decoration: BoxDecoration(
//           border: Border.all(color: ColorConstants.offWhite),
//           borderRadius: BorderRadius.circular(CommonDimens.textFieldRadius)),
//     );
//   }
// }
