import 'package:bookys/commen_file/CommonDimens.dart';
import 'package:flutter/material.dart';

class MyRoundButton extends StatelessWidget {
  final String text;
  final double mWidth;
  final double mHeight;
  final double radius;
  final double paddingAll;
  final double borderWidth;
  final double fontSize;
  final Color bgColor;
  final Color textColor;
  final Color borderColor;
  final Color shadowColor;
  final FontWeight fontWeight;
  final bool isShadow;

  const MyRoundButton(
      this.text,
      this.mWidth,
      this.mHeight,
      this.radius,
      this.paddingAll,
      this.borderWidth,
      this.fontSize,
      this.bgColor,
      this.textColor,
      this.borderColor,
      this.shadowColor,
      this.fontWeight,
      this.isShadow);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mWidth,
      height: CommonDimens.buttonHeight,
      alignment: Alignment.center,
      padding: EdgeInsets.all(CommonDimens.buttonPadding),
      decoration: isShadow
          ? BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.all(Radius.circular(CommonDimens.buttonRadius)),
              border: (Border.all(color: borderColor, width: borderWidth)),
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.2),
                  spreadRadius: 2.0,
                  blurRadius: 2.0,
                  offset: Offset(1.0, 4.0), // changes position of shadow
                ),
              ],
            )
          : BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.all(Radius.circular(CommonDimens.buttonRadius)),
              border: (Border.all(color: borderColor, width: borderWidth)),
            ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize:fontSize<=10?fontSize: CommonDimens.buttonFontSize,
          color: textColor,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
