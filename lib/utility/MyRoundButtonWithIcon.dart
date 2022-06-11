// import 'package:bookys/commen_file/CommonDimens.dart';
// import 'package:bookys/constants/color_constants.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter/material.dart';
//
// import 'MyImageAssets.dart';
//
// class MyRoundButtonWithIcon extends StatelessWidget {
//   final String text;
//   final double mWidth;
//   final double mHeight;
//   final double radius;
//   final double paddingAll;
//   final double borderWidth;
//   final double fontSize;
//   final Color bgColor;
//   final Color textColor;
//   final Color borderColor;
//   final FontWeight fontWeight;
//   final String path;
//   final Color iconColor;
//   final double iconWidth;
//   final double iconHeight;
//   final double iconImageGap;
//   final bool isShadow;
//
//   const MyRoundButtonWithIcon(
//       this.text,
//       this.mWidth,
//       this.mHeight,
//       this.radius,
//       this.paddingAll,
//       this.borderWidth,
//       this.fontSize,
//       this.bgColor,
//       this.textColor,
//       this.borderColor,
//       this.fontWeight,
//       this.path,
//       this.iconColor,
//       this.iconWidth,
//       this.iconHeight,
//       this.iconImageGap,
//       this.isShadow);
//
//   @override
//   Widget build(BuildContext context) {
//
//    return Container(
//         width: mWidth,
//         height: CommonDimens.buttonHeight,
//         alignment: Alignment.center,
//         padding: EdgeInsets.all(CommonDimens.buttonPadding),
//      decoration: isShadow
//          ? BoxDecoration(
//        color: bgColor,
//        borderRadius: BorderRadius.all(Radius.circular(CommonDimens.buttonRadius)),
//        border: (Border.all(color: borderColor, width: borderWidth)),
//        boxShadow: [
//          BoxShadow(
//            color:bgColor==ColorConstants.bookysMain?bgColor.withOpacity(0.2):Colors.grey.withOpacity(.2),
//            spreadRadius: 2.0,
//            blurRadius: 2.0,
//            offset: Offset(1.0, 2.0), // changes position of shadow
//          ),
//        ],
//      ) : BoxDecoration(
//        color: bgColor,
//        borderRadius: BorderRadius.all(Radius.circular(CommonDimens.buttonRadius)),
//        border: (Border.all(color: borderColor, width: borderWidth)),
//      ),
//         child: Stack(
//           children: <Widget>[
//             Container(
//               height: CommonDimens.buttonHeight,
//               alignment: Alignment.centerLeft,
//               padding: EdgeInsets.all(0.015.sw),
//               child: MyImageAssets(
//                   path,
//                   iconWidth,
//                   iconHeight),
//             ),
//             Container(
//               width: mWidth,
//               height: CommonDimens.buttonHeight,
//               alignment: Alignment.center,
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   fontSize: fontSize,
//                   color: textColor,
//                   fontWeight: fontWeight,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//
//   }
// }
