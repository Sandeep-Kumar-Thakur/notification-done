import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';

import '../colour_constants.dart';

class MyContactNumberField extends StatelessWidget {
  MyContactNumberField(
      {Key? key,
      required this.companyPhoneFocus,
      required this.controller,
      required this.onCountryPickerChange})
      : super(key: key);

  final FocusNode companyPhoneFocus;
  final TextEditingController controller;
  final Function(CountryCode) onCountryPickerChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (v) {
          if (v!.isEmpty) {
            return "The Mobile number is required";
          }
          if (v.length < 8) {
            return "The Mobile number must contain at least 8 digit";
          }
          if (!v.isNum || v.contains(".") || v.contains(" ")) {
            return "Please enter valid mobile number";
          }
          return null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        focusNode: companyPhoneFocus,
        controller: controller,
        autocorrect: false,
        maxLines: 1,
        maxLength: 14,
        style:
            TextStyle(color: ColorConstants.bookysTextMain, fontSize: 14.0.sp),
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.only(top: 0.95.sp / 4),
          counterStyle: TextStyle(
            height: double.minPositive,
          ),
          counterText: "",
          labelText: StringConstants.MOBILE_NUMBER.tr,
          labelStyle: TextStyle(
              color: companyPhoneFocus.hasFocus
                  ? ColorConstants.bookysMain
                  : ColorConstants.pageViewIndicatorGray,
              fontSize: 14.0.sp),
          prefixIcon: Container(
            padding: EdgeInsets.only(left: 10),
            width: 0.34.sw,
            child: Row(
              children: [
                Icon(
                  Icons.call_outlined,
                  size: CommonDimens.textFieldPrefixSize,
                  color: companyPhoneFocus.hasFocus
                      ? ColorConstants.bookysMain
                      : controller.text.length > 0
                          ? ColorConstants.bookysTextMain
                          : ColorConstants.pageViewIndicatorGray,
                ),
                CountryCodePicker(
                  initialSelection: "US",
                  padding: EdgeInsets.zero,
                  flagWidth: 20,
                  onChanged: onCountryPickerChange,
                  textStyle:
                      TextStyle(color: ColorConstants.pageViewIndicatorGray),
                )
              ],
            ),
          ),
          hintText: "mobile number",
          hintStyle: TextStyle(
              color: ColorConstants.pageViewIndicatorGray, fontSize: 14.0.sp),
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(CommonDimens.textFieldRadius)),
            borderSide: BorderSide(
                color: ColorConstants.pageViewIndicatorGray, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(CommonDimens.textFieldEnabledRadius)),
            borderSide: BorderSide(color: ColorConstants.offWhite, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(CommonDimens.textFieldFocusRadius)),
            borderSide:
                BorderSide(color: ColorConstants.bookysMain, width: 1.0),
          ),
        ));
  }
}
