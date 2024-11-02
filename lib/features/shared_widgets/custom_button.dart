import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/app_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    required this.onPress,
    this.color,
    this.child,
    this.style,
    super.key,
  });

  final String title;
  final Function? onPress;
  final Color? color;
  final TextStyle? style;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress == null ? null : () => onPress?.call(),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(color ?? primaryColor),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 16.w),
        ),
      ),
      child: child ??
          Text(
            " $title",
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: style ?? Theme.of(context).textTheme.bodySmall!.copyWith(color: whiteColor),
          ),
    );
  }
}
