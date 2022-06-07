import 'package:bookys/commen_file/CommonDimens.dart';
import 'package:bookys/commen_file/CommonStyles.dart';
import 'package:bookys/constants/color_constants.dart';
import 'package:bookys/views/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';

class MyTextFieldWithPreFix extends StatefulWidget {
  final double width;
  final double height;
  final TextEditingController controller;
  final TextInputType textInputType;
  final FocusNode focusNode;
  final String hintText;
  final String labelText;
  final Widget preFixIcon;
  final Color textColor;
  final double textFontSize;
  final FontStyle textFontStyle;
  final FontWeight textFontWeight;
  final Color hintColor;
  final double hintFontSize;
  final bool filled;
  final Color filledColor;
  final double enabledBorderRadius;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final double focusedBorderRadius;
  final Color focusedBorderColor;
  final double focusedBorderWidth;
  final String error;
  final bool isReadOnly;
  final Function onTap;

  MyTextFieldWithPreFix(
      this.width,
      this.height,
      this.controller,
      this.textInputType,
      this.focusNode,
      this.hintText,
      this.labelText,
      this.preFixIcon,
      this.textColor,
      this.textFontSize,
      this.textFontStyle,
      this.textFontWeight,
      this.hintColor,
      this.hintFontSize,
      this.filled,
      this.filledColor,
      this.enabledBorderRadius,
      this.enabledBorderColor,
      this.enabledBorderWidth,
      this.focusedBorderRadius,
      this.focusedBorderColor,
      this.focusedBorderWidth,
      this.error,
      {this.isReadOnly = false,
      this.onTap});

  @override
  _MyTextFieldWithPreFixState createState() => _MyTextFieldWithPreFixState();
}

class _MyTextFieldWithPreFixState extends State<MyTextFieldWithPreFix> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      alignment: Alignment.centerLeft,
      child: TextFormField(
          onTap: widget.onTap,
          readOnly: widget.isReadOnly,
          validator: (value) {
            if (value.isEmpty)
              return "The " + widget.error + " is required";
            else
              return null;
          },
          focusNode: widget.focusNode,
          autocorrect: false,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlign: TextAlign.start,
          style: CommonStyles.textFieldStyle,
          decoration: InputDecoration(
            errorStyle: TextStyle(fontSize: CommonDimens.textFieldErrorSize),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(CommonDimens.textFieldRadius),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor ==
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.offWhite
                      : widget.enabledBorderColor,
                  width: 1),
            ),
            contentPadding: EdgeInsets.only(
              top: widget.height / 4, // HERE THE IMPORTANT PART
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
                color: widget.focusNode.hasFocus
                    ? widget.focusedBorderColor
                    : ColorConstants.pageViewIndicatorGray,
                fontSize: CommonDimens.textFieldLabelSize),
            prefixIcon: Container(
                height: CommonDimens.textFieldPrefixSize,
                width: CommonDimens.textFieldPrefixSize,
                child: widget.preFixIcon),
            hintText: widget.hintText,
            hintStyle: CommonStyles.textFieldHintStyle,
            filled: widget.filled,
            fillColor: widget.filledColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldEnabledRadius)),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor ==
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.offWhite
                      : widget.enabledBorderColor,
                  width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldFocusRadius)),
              borderSide:
                  BorderSide(color: widget.focusedBorderColor, width: 1),
            ),
          )),
    );
  }
}

class MyTextFieldWithPreFixw extends StatefulWidget {
  final double width;
  final double height;
  final TextEditingController controller;
  final TextInputType textInputType;
  final FocusNode focusNode;
  final String hintText;
  final String labelText;
  final Widget preFixIcon;
  final Color textColor;
  final double textFontSize;
  final FontStyle textFontStyle;
  final FontWeight textFontWeight;
  final Color hintColor;
  final double hintFontSize;
  final bool filled;
  final Color filledColor;
  final double enabledBorderRadius;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final double focusedBorderRadius;
  final Color focusedBorderColor;
  final double focusedBorderWidth;
  final String error;

  MyTextFieldWithPreFixw(
    this.width,
    this.height,
    this.controller,
    this.textInputType,
    this.focusNode,
    this.hintText,
    this.labelText,
    this.preFixIcon,
    this.textColor,
    this.textFontSize,
    this.textFontStyle,
    this.textFontWeight,
    this.hintColor,
    this.hintFontSize,
    this.filled,
    this.filledColor,
    this.enabledBorderRadius,
    this.enabledBorderColor,
    this.enabledBorderWidth,
    this.focusedBorderRadius,
    this.focusedBorderColor,
    this.focusedBorderWidth,
    this.error,
  );

  @override
  _MyTextFieldWithPreFixwState createState() => _MyTextFieldWithPreFixwState();
}

class _MyTextFieldWithPreFixwState extends State<MyTextFieldWithPreFixw> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      alignment: Alignment.centerLeft,
      child: TextFormField(
          focusNode: widget.focusNode,
          autocorrect: false,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlign: TextAlign.start,
          style: CommonStyles.textFieldStyle,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(CommonDimens.textFieldRadius),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor ==
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.offWhite
                      : widget.enabledBorderColor,
                  width: 1),
            ),
            contentPadding: EdgeInsets.only(
              top: widget.height / 4, // HERE THE IMPORTANT PART
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
                color: widget.focusNode.hasFocus
                    ? widget.focusedBorderColor
                    : ColorConstants.pageViewIndicatorGray,
                fontSize: CommonDimens.textFieldLabelSize),
            prefixIcon: Container(
                height: CommonDimens.textFieldPrefixSize,
                width: CommonDimens.textFieldPrefixSize,
                child: widget.preFixIcon),
            hintText: widget.hintText,
            hintStyle:  CommonStyles.textFieldHintStyle,
            filled: widget.filled,
            fillColor: widget.filledColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldEnabledRadius)),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor ==
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.offWhite
                      : widget.enabledBorderColor,
                  width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldFocusRadius)),
              borderSide:
                  BorderSide(color: widget.focusedBorderColor, width: 1),
            ),
          )),
    );
  }
}

class EmailField extends StatefulWidget {
  final double width;
  final double height;
  final TextEditingController controller;
  final TextInputType textInputType;
  final FocusNode focusNode;
  final String hintText;
  final String labelText;
  final Widget preFixIcon;
  final Color textColor;
  final double textFontSize;
  final FontStyle textFontStyle;
  final FontWeight textFontWeight;
  final Color hintColor;
  final double hintFontSize;
  final bool filled;
  final Color filledColor;
  final double enabledBorderRadius;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final double focusedBorderRadius;
  final Color focusedBorderColor;
  final double focusedBorderWidth;

  EmailField(
      this.width,
      this.height,
      this.controller,
      this.textInputType,
      this.focusNode,
      this.hintText,
      this.labelText,
      this.preFixIcon,
      this.textColor,
      this.textFontSize,
      this.textFontStyle,
      this.textFontWeight,
      this.hintColor,
      this.hintFontSize,
      this.filled,
      this.filledColor,
      this.enabledBorderRadius,
      this.enabledBorderColor,
      this.enabledBorderWidth,
      this.focusedBorderRadius,
      this.focusedBorderColor,
      this.focusedBorderWidth);

  @override
  _EmailField createState() => _EmailField();
}

class _EmailField extends State<EmailField> {
  final autovalidate = Get.put(TextFieldValidation());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      alignment: Alignment.centerLeft,
      child: TextFormField(
          validator: (value) {
            if (value.isEmpty) {
              return "The Email is required";
            } else {
              if (!GetUtils.isEmail(value))
                return "The Email is not valid";
              else
                return null;
            }
          },
          focusNode: widget.focusNode,
          autocorrect: false,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          autovalidateMode: autovalidate.autovalidation.value
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          textAlign: TextAlign.start,
          style:  CommonStyles.textFieldStyle,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(CommonDimens.textFieldRadius),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor ==
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.offWhite
                      : ColorConstants.pageViewIndicatorGray,
                  width: 1),
            ),
            contentPadding: EdgeInsets.only(
              top: widget.height / 4, // HERE THE IMPORTANT PART
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
                color: widget.focusNode.hasFocus
                    ? widget.focusedBorderColor
                    : ColorConstants.pageViewIndicatorGray,
                fontSize: CommonDimens.textFieldLabelSize),
            prefixIcon: Container(
                height: CommonDimens.textFieldPrefixSize,
                width: CommonDimens.textFieldPrefixSize,
                child: widget.preFixIcon),
            hintText: widget.hintText,
            hintStyle: CommonStyles.textFieldHintStyle,
            filled: widget.filled,
            fillColor: widget.filledColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldEnabledRadius)),
              borderSide:
                  BorderSide(color: widget.enabledBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldFocusRadius)),
              borderSide:
                  BorderSide(color: widget.focusedBorderColor, width: 1),
            ),
          )),
    );
  }
}

class ReferenceCodeField extends StatefulWidget {
  final double width;
  final double height;
  final TextEditingController controller;
  final TextInputType textInputType;
  final FocusNode focusNode;
  final String hintText;
  final String labelText;
  final Widget preFixIcon;
  final Color textColor;
  final double textFontSize;
  final FontStyle textFontStyle;
  final FontWeight textFontWeight;
  final Color hintColor;
  final double hintFontSize;
  final bool filled;
  final Color filledColor;
  final double enabledBorderRadius;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final double focusedBorderRadius;
  final Color focusedBorderColor;
  final double focusedBorderWidth;

  ReferenceCodeField(
      this.width,
      this.height,
      this.controller,
      this.textInputType,
      this.focusNode,
      this.hintText,
      this.labelText,
      this.preFixIcon,
      this.textColor,
      this.textFontSize,
      this.textFontStyle,
      this.textFontWeight,
      this.hintColor,
      this.hintFontSize,
      this.filled,
      this.filledColor,
      this.enabledBorderRadius,
      this.enabledBorderColor,
      this.enabledBorderWidth,
      this.focusedBorderRadius,
      this.focusedBorderColor,
      this.focusedBorderWidth);

  @override
  _ReferenceCodeField createState() => _ReferenceCodeField();
}

class _ReferenceCodeField extends State<ReferenceCodeField> {
  final autovalidate = Get.put(TextFieldValidation());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      alignment: Alignment.centerLeft,
      child: TextFormField(
          focusNode: widget.focusNode,
          autocorrect: false,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          autovalidateMode: autovalidate.autovalidation.value
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          textAlign: TextAlign.start,
          style:  CommonStyles.textFieldStyle,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(CommonDimens.textFieldRadius),
              borderSide:
                  BorderSide(color: widget.enabledBorderColor, width: 1),
            ),
            contentPadding: EdgeInsets.only(
              top: widget.height / 4, // HERE THE IMPORTANT PART
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
                color: widget.focusNode.hasFocus
                    ? widget.focusedBorderColor
                    : ColorConstants.pageViewIndicatorGray,
                fontSize: CommonDimens.textFieldLabelSize),
            prefixIcon: Container(
                height: CommonDimens.textFieldPrefixSize,
                width: CommonDimens.textFieldPrefixSize,
                child: widget.preFixIcon),
            hintText: widget.hintText,
            hintStyle:  CommonStyles.textFieldHintStyle,
            filled: widget.filled,
            fillColor: widget.filledColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldEnabledRadius)),
              borderSide:
                  BorderSide(color: widget.enabledBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldFocusRadius)),
              borderSide:
                  BorderSide(color: widget.focusedBorderColor, width: 1),
            ),
          )),
    );
  }
}

class MyTextFieldWithPreFixMultiLine extends StatefulWidget {
  final double width;
  final double height;
  final TextEditingController controller;
  final TextInputType textInputType;
  final FocusNode focusNode;
  final String hintText;
  final String labelText;
  final Widget preFixIcon;
  final Color textColor;
  final double textFontSize;
  final FontStyle textFontStyle;
  final FontWeight textFontWeight;
  final Color hintColor;
  final double hintFontSize;
  final bool filled;
  final Color filledColor;
  final double enabledBorderRadius;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final double focusedBorderRadius;
  final Color focusedBorderColor;
  final double focusedBorderWidth;
  final String error;

  MyTextFieldWithPreFixMultiLine(
    this.width,
    this.height,
    this.controller,
    this.textInputType,
    this.focusNode,
    this.hintText,
    this.labelText,
    this.preFixIcon,
    this.textColor,
    this.textFontSize,
    this.textFontStyle,
    this.textFontWeight,
    this.hintColor,
    this.hintFontSize,
    this.filled,
    this.filledColor,
    this.enabledBorderRadius,
    this.enabledBorderColor,
    this.enabledBorderWidth,
    this.focusedBorderRadius,
    this.focusedBorderColor,
    this.focusedBorderWidth,
    this.error,
  );

  @override
  _MyTextFieldWithPreFixMultiLine createState() =>
      _MyTextFieldWithPreFixMultiLine();
}

class _MyTextFieldWithPreFixMultiLine
    extends State<MyTextFieldWithPreFixMultiLine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      alignment: Alignment.centerLeft,
      child: TextFormField(
          validator: (value) {
            if (value.isEmpty)
              return "The " + widget.error + " is required";
            else
              return null;
          },
          focusNode: widget.focusNode,
          autocorrect: false,
          controller: widget.controller,
          keyboardType: TextInputType.multiline,
          minLines: 1,
          //Normal textInputField will be displayed
          maxLines: null,
          maxLength: 150,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlign: TextAlign.start,
          style: CommonStyles.textFieldStyle,
          decoration: InputDecoration(
            counterText: "",
            errorStyle: TextStyle(fontSize: CommonDimens.textFieldErrorSize),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(CommonDimens.textFieldRadius),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor !=
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.pageViewIndicatorGray
                      : ColorConstants.offWhite,
                  width: 1),
            ),
            contentPadding: EdgeInsets.only(
              top: widget.height / 4, // HERE THE IMPORTANT PART
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
                color: widget.focusNode.hasFocus
                    ? ColorConstants.bookysMain
                    : ColorConstants.pageViewIndicatorGray,
                fontSize: CommonDimens.textFieldLabelSize),
            prefixIcon: Container(
                height: CommonDimens.textFieldPrefixSize,
                width: CommonDimens.textFieldPrefixSize,
                child: widget.preFixIcon),
            hintText: widget.hintText,
            hintStyle:  CommonStyles.textFieldHintStyle,
            filled: widget.filled,
            fillColor: widget.filledColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldEnabledRadius)),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor !=
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.pageViewIndicatorGray
                      : ColorConstants.offWhite,
                  width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldFocusRadius)),
              borderSide:
                  BorderSide(color: widget.focusedBorderColor, width: 1),
            ),
          )),
    );
  }
}

class EmailFieldAuto extends StatefulWidget {
  final double width;
  final double height;
  final TextEditingController controller;
  final TextInputType textInputType;
  final FocusNode focusNode;
  final String hintText;
  final String labelText;
  final Widget preFixIcon;
  final Color textColor;
  final double textFontSize;
  final FontStyle textFontStyle;
  final FontWeight textFontWeight;
  final Color hintColor;
  final double hintFontSize;
  final bool filled;
  final Color filledColor;
  final double enabledBorderRadius;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final double focusedBorderRadius;
  final Color focusedBorderColor;
  final double focusedBorderWidth;

  EmailFieldAuto(
      this.width,
      this.height,
      this.controller,
      this.textInputType,
      this.focusNode,
      this.hintText,
      this.labelText,
      this.preFixIcon,
      this.textColor,
      this.textFontSize,
      this.textFontStyle,
      this.textFontWeight,
      this.hintColor,
      this.hintFontSize,
      this.filled,
      this.filledColor,
      this.enabledBorderRadius,
      this.enabledBorderColor,
      this.enabledBorderWidth,
      this.focusedBorderRadius,
      this.focusedBorderColor,
      this.focusedBorderWidth);

  @override
  _EmailFieldAuto createState() => _EmailFieldAuto();
}

class _EmailFieldAuto extends State<EmailFieldAuto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      alignment: Alignment.centerLeft,
      child: TextFormField(
          validator: (value) {
            if (value.isEmpty) {
              return null;
            } else {
              if (!GetUtils.isEmail(value))
                return "The Email is not valid";
              else
                return null;
            }
          },
          focusNode: widget.focusNode,
          autocorrect: false,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlign: TextAlign.start,
          style:  CommonStyles.textFieldStyle,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(CommonDimens.textFieldRadius),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor !=
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.pageViewIndicatorGray
                      : ColorConstants.offWhite,
                  width: 1),
            ),
            contentPadding: EdgeInsets.only(
              top: widget.height / 4, // HERE THE IMPORTANT PART
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
                color: widget.focusNode.hasFocus
                    ? widget.focusedBorderColor
                    : ColorConstants.pageViewIndicatorGray,
                fontSize: CommonDimens.textFieldLabelSize),
            prefixIcon: Container(
                height: CommonDimens.textFieldPrefixSize,
                width: CommonDimens.textFieldPrefixSize,
                child: widget.preFixIcon),
            hintText: widget.hintText,
            hintStyle: CommonStyles.textFieldHintStyle,
            filled: widget.filled,
            fillColor: widget.filledColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldEnabledRadius)),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor !=
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.pageViewIndicatorGray
                      : ColorConstants.offWhite,
                  width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldFocusRadius)),
              borderSide:
                  BorderSide(color: widget.focusedBorderColor, width: 1),
            ),
          )),
    );
  }
}

//--------------------------------------------------------------
class MyTextFieldWithPreFixMultiLineW extends StatefulWidget {
  final double width;
  final double height;
  final TextEditingController controller;
  final TextInputType textInputType;
  final FocusNode focusNode;
  final String hintText;
  final String labelText;
  final Widget preFixIcon;
  final Color textColor;
  final double textFontSize;
  final FontStyle textFontStyle;
  final FontWeight textFontWeight;
  final Color hintColor;
  final double hintFontSize;
  final bool filled;
  final Color filledColor;
  final double enabledBorderRadius;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final double focusedBorderRadius;
  final Color focusedBorderColor;
  final double focusedBorderWidth;
  final String error;

  MyTextFieldWithPreFixMultiLineW(
    this.width,
    this.height,
    this.controller,
    this.textInputType,
    this.focusNode,
    this.hintText,
    this.labelText,
    this.preFixIcon,
    this.textColor,
    this.textFontSize,
    this.textFontStyle,
    this.textFontWeight,
    this.hintColor,
    this.hintFontSize,
    this.filled,
    this.filledColor,
    this.enabledBorderRadius,
    this.enabledBorderColor,
    this.enabledBorderWidth,
    this.focusedBorderRadius,
    this.focusedBorderColor,
    this.focusedBorderWidth,
    this.error,
  );

  @override
  _MyTextFieldWithPreFixMultiLineW createState() =>
      _MyTextFieldWithPreFixMultiLineW();
}

class _MyTextFieldWithPreFixMultiLineW
    extends State<MyTextFieldWithPreFixMultiLineW> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      alignment: Alignment.centerLeft,
      child: TextFormField(
          focusNode: widget.focusNode,
          autocorrect: false,
          controller: widget.controller,
          keyboardType: TextInputType.multiline,
          minLines: 1,
          //Normal textInputField will be displayed
          maxLines: null,
          maxLength: 150,
          textAlign: TextAlign.start,
          style: CommonStyles.textFieldStyle,
          decoration: InputDecoration(
            counterText: "",
            errorStyle: TextStyle(fontSize: CommonDimens.textFieldErrorSize),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(CommonDimens.textFieldRadius),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor !=
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.pageViewIndicatorGray
                      : ColorConstants.offWhite,
                  width: 1),
            ),
            contentPadding: EdgeInsets.only(
              top: widget.height / 4, // HERE THE IMPORTANT PART
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
                color: widget.focusNode.hasFocus
                    ? ColorConstants.bookysMain
                    : ColorConstants.pageViewIndicatorGray,
                fontSize: CommonDimens.textFieldLabelSize),
            prefixIcon: Container(
                height: CommonDimens.textFieldPrefixSize,
                width: CommonDimens.textFieldPrefixSize,
                child: widget.preFixIcon),
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: ColorConstants.pageViewIndicatorGray,
                fontSize: CommonDimens.textFieldHintSize),
            filled: widget.filled,
            fillColor: widget.filledColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldEnabledRadius)),
              borderSide: BorderSide(
                  color: widget.enabledBorderColor !=
                          ColorConstants.pageViewIndicatorGray
                      ? ColorConstants.pageViewIndicatorGray
                      : ColorConstants.offWhite,
                  width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(CommonDimens.textFieldFocusRadius)),
              borderSide:
                  BorderSide(color: widget.focusedBorderColor, width: 1),
            ),
          )),
    );
  }
}
