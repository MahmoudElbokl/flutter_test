import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../shared_widgets/custom_input.dart';

class VoucherCodeSection extends StatelessWidget {
  const VoucherCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(top: 16.h, bottom: 16.h, start: 16.w),
          child: Text(
            "Save on your order",
            style: appTextTheme.bodyMedium!.copyWith(
              color: blackColor,
              fontSize: 16.sp,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: CustomInput(
            textEditingController: TextEditingController(),
            label: "Enter voucher code",
            prefixIcon: Assets.icons.ticket.path,
            suffixWidget: Text(
              "Submit",
              style: appTextTheme.labelLarge,
            ),
          ),
        ),
      ],
    );
  }
}
