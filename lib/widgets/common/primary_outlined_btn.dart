import 'package:course_app/utils/dimens.dart';
import 'package:course_app/utils/styles/app_text_style.dart';
import 'package:course_app/widgets/common/ripple_effect.dart';
import 'package:flutter/material.dart';

class AyushOutlinedButton extends StatelessWidget {
  const AyushOutlinedButton({
    Key? key,
    this.bgColor,
    this.borderRadius,
    required this.label,
    this.prefix,
    this.suffix,
    this.labelColor,
    this.onTap,
    this.padding,
    this.width,
    this.height,
    this.fontSize,
    this.borderColor,
    this.borderWidth,
    this.labelStyle,
    this.borderStyle,
    this.minWidth,
    this.margin,
  }) : super(key: key);

  final Color? bgColor;
  final double? borderRadius;
  final String label;
  final Color? labelColor;
  final Color? borderColor;
  final Widget? prefix;
  final Widget? suffix;
  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final double? fontSize;
  final double? borderWidth;
  final double? minWidth;
  final BorderStyle? borderStyle;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: RippleEffect(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          padding: padding,
          constraints: BoxConstraints(
            maxWidth: Dimens.screenWidth,
            minWidth: minWidth ?? Dimens.sixtyFour,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor ??
                  Theme.of(context).textTheme.titleMedium!.color!,
              width: borderWidth ?? Dimens.pointEight,
              style: borderStyle ?? BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? Dimens.four),
            color: bgColor ?? Colors.transparent,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (prefix != null) prefix!,
              if (prefix != null) Dimens.boxWidth4,
              Text(
                label,
                style: labelStyle ??
                    AppStyles.style16Bold.copyWith(
                      color: labelColor ??
                          Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: fontSize ?? Dimens.sixTeen,
                    ),
              ),
              if (suffix != null) Dimens.boxWidth4,
              if (suffix != null) suffix!,
            ],
          ),
        ),
      ),
    );
  }
}
