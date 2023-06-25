import 'package:course_app/utils/app_colors.dart';
import 'package:course_app/utils/dm.dart';
import 'package:course_app/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KDecoration {
  static BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(width: 1, color: AppColors.greyColor),
    borderRadius: BorderRadius.circular(Dm.r10),
  );

  static BoxDecoration dynamickBoxDecoration(BuildContext context) {
    return KDecoration.boxDecoration.copyWith(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(0),
        border: context.isDarkMode ? Border.all(width: 0) : null);
  }

  //tectfield input Decoration
  static InputDecoration textfieldDecoration(
    BuildContext context, {
    String? hintText,
    String? labelText,
    String? errorText,
  }) {
    return InputDecoration(
      errorText: errorText,
      hintText: hintText,
      labelText: labelText,
      // label: HeadingWithStartMark(labelText!),

      errorMaxLines: 2,
      contentPadding:
          EdgeInsets.only(bottom: 0, top: 0, left: Dm.w10, right: Dm.w10),
      hintStyle: AppStyles.textfieldHintTextStyel,
      labelStyle: AppStyles.textfieldLabelTextStyle(context),
      border: border(context, false),
      enabledBorder: border(context, false),
      focusedBorder: border(context, true),
    );
  }

  //textfield border
  static OutlineInputBorder border(BuildContext context, bool isEnabled) {
    return OutlineInputBorder(
        borderSide: BorderSide(
      width: isEnabled ? 1.5 : 1,
      color: AppColors.primaryLightColor,
    ));
  }
}