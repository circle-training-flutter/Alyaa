import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';

class OrderTotalPrice extends StatelessWidget {
  const OrderTotalPrice({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(tr(LocaleKeys.total), style: AppStyles.semiBold14(context)),
        const Spacer(),
        Text(price,
            style: AppStyles.semiBold18(
              context,
            ).copyWith(color: AppColors.kRed)),
        Gap(3.w),
        Text('ج.م', style: AppStyles.regular12(context, AppColors.kRed)),
      ],
    );
  }
}
