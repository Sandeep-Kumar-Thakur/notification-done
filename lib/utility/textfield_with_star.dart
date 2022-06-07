import 'package:bookys/constants/color_constants.dart';
import 'package:bookys/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class TextFieldWithStar extends StatelessWidget {
  const TextFieldWithStar({Key key, this.child, this.showStar = true})
      : super(key: key);
  final Widget child;
  final bool showStar;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(child: child),
        if (showStar)
          SizedBox(
            width: 0.01.sw,
          ),
        showStar
            ? Text(StringConstants.STAR.tr,
                style: TextStyle(
                  color: ColorConstants.bookysTextMain,
                  fontSize: 10.sp,
                  fontStyle: FontStyle.normal,
                ))
            : Text(StringConstants.STAR.tr,
                style: TextStyle(
                  color: ColorConstants.colorTransparent,
                  fontSize: 10.sp,
                  fontStyle: FontStyle.normal,
                ))
      ],
    );
  }
}
